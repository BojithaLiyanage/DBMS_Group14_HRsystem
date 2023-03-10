import React, { useState, useEffect } from "react";
import Axios from "axios";
import { useLocation } from "react-router-dom";
import { useGlobalFilter, useRowSelect, useTable } from "react-table";
import Table from "@mui/material/Table";
import TableBody from "@mui/material/TableBody";
import TableCell from "@mui/material/TableCell";
import TableContainer from "@mui/material/TableContainer";
import TableHead from "@mui/material/TableHead";
import TableRow from "@mui/material/TableRow";
import Paper from "@mui/material/Paper";

const COLUMNS = [
  { Header: "ID", accessor: "ID" },
  { Header: "Employee Name", accessor: "Employee Name" },
  { Header: "Email", accessor: "Email" },
  { Header: "Joined Date", accessor: "Joined Date" },
  { Header: "Employee Type", accessor: "Employee Type" },
  { Header: "Employee Status", accessor: "Employee Status" },
  { Header: "Paygrade", accessor: "Paygrade" },
];

export function EmployeeByDepartmentReport() {
  const [currentUsername, setCurrentUsername] = useState("");
  const [employeeList, setEmployeeList] = useState([]);
  const [parameterList, setParameterList] = useState([]);
  const [alertMessage, setAlertMessage] = useState("");
  const [show, setShow] = useState(false);
  const [alertType, setAlertType] = useState("");

  const location = useLocation();

  const formValues = location.state.formValues;
  const department = formValues.department;

  const user_id = sessionStorage.getItem("userId");
  const current = new Date();
  const currentDate = `${current.getDate()}/${
    current.getMonth() + 1
  }/${current.getFullYear()}`;

  const dateFormatter = (date) => {
    return date.split("T")[0];
  };

  useEffect(() => {
    let token = sessionStorage.getItem("token");
    Axios.get("http://localhost:3001/report/getCurrentUserName/" + user_id, {
      headers: { Authorization: `Bearer ${token}` },
    })
      .then((currentUser) => {
        setCurrentUsername(
          currentUser.data.data[0].firstname +
            " " +
            currentUser.data.data[0].lastname
        );
      })
      .catch((err) => {
        setAlertMessage("");
        setAlertType("alert alert-danger");
        switch (err.response.request.status) {
          case 400:
            setAlertMessage(err.response.data.message);
            setShow(true);
            break;
          case 500:
            setAlertMessage("Server Error!");
            setShow(true);
            break;
          case 501:
            setAlertMessage("Server Error!");
            setShow(true);
            break;
          case 502:
            setAlertMessage("Server Error!");
            setShow(true);
            break;
          default:
            break;
        }
      });
  }, [user_id]);

  useEffect(() => {
    let token = sessionStorage.getItem("token");
    Axios.post(
      "http://localhost:3001/report/create_employee_by_department_report",
      formValues,
      { headers: { Authorization: `Bearer ${token}` } }
    )
      .then((response) => {
        setParameterList(response.data.data[0]);
        setEmployeeList(response.data.data[1]);
      })
      .catch((err) => {
        setAlertType("alert alert-danger");
        setAlertMessage("");
        switch (err.response.request.status) {
          case 400:
            setAlertMessage(err.response.data.message);
            setShow(true);
            break;
          case 500:
            setAlertMessage("Server Error!");
            setShow(true);
            break;
          case 501:
            setAlertMessage("Server Error!");
            setShow(true);
            break;
          case 502:
            setAlertMessage("Server Error!");
            setShow(true);
            break;
          default:
            break;
        }
      });
  }, [formValues]);

  const { getTableProps, getTableBodyProps, headerGroups, rows, prepareRow } =
    useTable(
      {
        columns: COLUMNS,
        data: employeeList,
      },
      useRowSelect,
      useGlobalFilter,
      (hooks) => {
        hooks.visibleColumns.push((columns) => {
          return [...columns];
        });
      }
    );

  return (
    <div className="background-Report">
      <div>
        <div
          style={{ visibility: show ? "visible" : "hidden" }}
          className={alertType}
          role="alert"
        >
          {alertMessage}
        </div>

        <div className="row mb-3">
          <h1 class="title"> Employees of {department} Department Report</h1>

          <div>
            <center>
              <label className="fonts">
                Generated By:
                <lable className="det"> {currentUsername}</lable>
              </label>
              <br></br>
              <label className="fonts">
                Generated Date:
                <lable className="det"> {currentDate}</lable>
              </label>
            </center>
          </div>
        </div>

        <TableContainer component={Paper} sx={{ mt: 7 }}>
          <Table
            sx={{
              minWidth: 650,
              bgcolor: "#141b2d",
              padding: 100,
            }}
            size="medium"
            aria-label="a dense table"
          >
            {headerGroups.map((headerGroup) => (
              <tr {...headerGroup.getHeaderGroupProps()}>
                {headerGroup.headers.map((column) => (
                  <th {...column.getHeaderProps()} className="center">
                    {column.render("Header")}
                  </th>
                ))}
              </tr>
            ))}
            <TableBody {...getTableBodyProps()}>
              {rows.map((row) => {
                prepareRow(row);
                return (
                  <TableRow {...row.getRowProps()}>
                    {row.cells.map((cell) => {
                      if (parameterList.includes(cell.column.id)) {
                        if (
                          cell.column.id === "Joined Date" &&
                          cell.row.values["Joined Date"]
                        )
                          cell.row.values["Joined Date"] = dateFormatter(
                            cell.row.values["Joined Date"]
                          );
                        return (
                          <TableCell
                            align="center"
                            sx={{ color: "#fff", p: 3 }}
                            {...cell.getCellProps()}
                          >
                            {cell.render("Cell")}
                          </TableCell>
                        );
                      } else return null;
                    })}
                  </TableRow>
                );
              })}
            </TableBody>
          </Table>
        </TableContainer>
      </div>
    </div>
  );
}

export default EmployeeByDepartmentReport;
