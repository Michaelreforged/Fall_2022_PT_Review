import { Link } from "react-router-dom";

const NavigationBar = () => (
  <>
    <Link to={"/"}>Home</Link>
    <Link to={"/marathons"}>Marathon</Link>
    <Link to={"/participants"}>Participants</Link>
  </>
);

export default NavigationBar;
