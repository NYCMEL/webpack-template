////////////////////////////////////////////////////////////////
// REQUIRED BY ALL
////////////////////////////////////////////////////////////////
import "bootstrap";
import "pubsub-js";

import "./w/scss/_bootstrap.scss"

import "./w/scss/_wc.scss";
import "./w/js/wc";

import "./w/scss/_tk.scss";
import "./w/js/tk.js";

import "jquery.cookie";

import "./w/js/include";

import "./w/js/tests";

////////////////////////////////////////////////////////////////
// PER COMPONENT
////////////////////////////////////////////////////////////////

import "./w/scss/_include.scss";
import "./w/js/include";

import "/tk/lib/components/misc/webpack-template/node_modules/bootstrap/dist/css/bootstrap.min.css";
import "/Melify/_needed/DataTables//DataTables-1.12.1/css/dataTables.bootstrap5.min.css";
import "/Melify/_needed/DataTables/FixedColumns-4.1.0/css/fixedColumns.bootstrap.min.css";

import "/tk/lib/components/misc/webpack-template/node_modules/datatables.net-fixedcolumns/css/fixedColumns.bootstrap5.scss";
import "/Melify/_needed/DataTables/DataTables-1.12.1/js/dataTables.bootstrap5.min.js";
import "/Melify/_needed/DataTables/FixedColumns-4.1.0/js/dataTables.fixedColumns.min.js";

import "./w/scss/_table.scss";
import "./w/js/table";

