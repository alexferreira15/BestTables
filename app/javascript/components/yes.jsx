import React  from "react";
import ReactDOM from "react-dom/client";

class Yes extends React.Component {
  render() {
    return (
    <div>
      <p>YESSS</p>
    </div>
    )
  }
}

const root = ReactDOM.createRoot(document.getElementById('yes'));
root.render(<Yes />);
