import { useEffect, useState } from "react"
import axios from 'axios'
import { Link } from "react-router-dom"

const Marathons = () => {

  const [marathons, setMarathons] = useState([])

  useEffect(()=>{
    getMarathons()
  },[])

  const getMarathons = async ()=>{
    let res = await axios.get('/api/marathons')
    setMarathons(res.data)
  }

  const renderMarathons = ()=>{
    return marathons.map((m)=>{
      return(
        <div key={m.id}>
        <h2>Race name: {m.name}</h2>
        <h2>Race distance: {m.distance}</h2>
        <Link to={`${m.id}`} state={{...m}}>Link to Marathon Details</Link>
        </div>
      )
    })
  }

  return(
    <div>
      <h1>Marathons</h1>
      {renderMarathons()}
    </div>
  )
}

export default Marathons