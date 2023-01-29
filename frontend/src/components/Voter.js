import { useEffect } from "react";
import { DeleteVoter } from "../api/ApiHandler";
import { InitializeVoter } from "../api/ApiHandler";

const Voter = (props) => {
  const id = props.id;

  useEffect(() => {
    InitializeVoter(id).then((response) => {
      console.log(response);
    });
  }, [id]);

  const deleteHandler = () => {
    DeleteVoter(id).then((response) => {
      console.log(response);
    });
  };

  return (
    <tr>
      <td>{props.id}</td>
      <td>{props.name}</td>
      <td>{props.address}</td>
      <td>{props.social_number}</td>
      <td>
        <form onSubmit={deleteHandler}>
          <button type="submit">Delete</button>
        </form>
      </td>
    </tr>
  );
};

export default Voter;
