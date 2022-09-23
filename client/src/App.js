import {Routes, Route} from "react-router-dom"
import NavigationBar from "./Components/Shared/NavigationBar";
import Marathon from "./Pages/Marathons/Marathon";
import Marathons from "./Pages/Marathons/Marathons";
import Participants from "./Pages/Participants/Participants";
import Home from "./Pages/Shared/Home"
import NoMatch from "./Pages/Shared/NoMatch";

function App() {
  return (
    <>
    <NavigationBar/>
    <Routes>
      <Route index element={<Home/>}/>
      <Route path="/marathons" element={<Marathons/>}/>
      <Route path="/marathons/:id" element={<Marathon/>}/>
      <Route path="/participants" element={<Participants/>}/>
      <Route path="/*" element={<NoMatch/>}/>
    </Routes>
    </>
  );
}

export default App;
