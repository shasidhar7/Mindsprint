function Login() {
    return (
        <div>
            <h3 className="text-center p-2 text-bg-secondary">Login Page</h3>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Email address</label>
                <input type="email" class="form-control" placeholder="name@example.com" />
            </div>
            <div class="row g-3 align-items-center">
            <div class="col-auto">
                <label for="inputPassword6" class="col-form-label">Password</label>
            </div>
            <div class="col-auto">
                <input type="password" class="form-control" aria-describedby="passwordHelpInline" />
            </div>
            <div class="col-auto">
                <span id="passwordHelpInline" class="form-text">
                Must be 8-20 characters long.
                </span>
            </div>
            <button className="btn btn-primary mt-3 w-100">Login </button>
            </div>
        </div>
     );
}
 
export default Login;
