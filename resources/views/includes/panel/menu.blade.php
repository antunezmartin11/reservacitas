<!-- Navigation -->
<h6 class="navbar-heading text-muted">
    @if(auth()->user()->role=='admin')
    Gestionar datos
    @else
    Menu
    @endif
    </h6>
<ul class="navbar-nav">
    @if(auth()->user()->role=='admin')
    <li class="nav-item">
        <a class="nav-link" href="/home">
        <i class="ni ni-tv-2 text-primary"></i> Dashboard
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/especialidades">
        <i class="ni ni-active-40 text-blue"></i> Especialidades
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/doctors">
        <i class="ni ni-single-02 text-orange"></i> Medicos
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/patients">
        <i class="ni ni-satisfied text-info"></i> Pacientes
        </a>
    </li>
    @elseif(auth()->user()->role=='doctor')
    <li class="nav-item">
        <a class="nav-link" href="/schedule">
        <i class="ni ni-calendar-grid-58 text-warning"></i> Gestionar Horario
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/especialidades">
        <i class="ni ni-time-alarm text-danger"></i> Mis Citas
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/especialidades">
        <i class="ni ni-satisfied text-info"></i> Mis Pacientes
        </a>
    </li>
    @else{{-- Paciente--}}
    <li class="nav-item">
        <a class="nav-link" href="/especialidades">
        <i class="ni ni-laptop text-danger"></i> Reservar Citas
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/especialidades">
        <i class="ni ni-time-alarm text-info"></i> Mis Citas
        </a>
    </li>
    @endif
    <li class="nav-item">
        <a class="nav-link" href="#" onclick="event.preventDefault(); document.getElementById('formLogout').submit();">
        <i class="ni ni-button-power text-dark"></i> Cerrar Session
        </a>
        <form action="{{route('logout')}}" method="POST" style="display: none" id="formLogout">
        @csrf
        </form>
    </li>
</ul>
<!-- Divider -->
@if(auth()->user()->role=='admin')
<hr class="my-3">
<!-- Heading -->
<h6 class="navbar-heading text-muted">Reportes</h6>
<!-- Navigation -->
<ul class="navbar-nav mb-md-3">
<li class="nav-item">
    <a class="nav-link" href="https://demos.creative-tim.com/argon-dashboard/docs/getting-started/overview.html">
    <i class="ni ni-chart-bar-32 text-green"></i> Frecuencia de citas
    </a>
</li>
<li class="nav-item">
    <a class="nav-link" href="https://demos.creative-tim.com/argon-dashboard/docs/foundation/colors.html">
    <i class="ni ni-basket text-orange"></i> Medicos mas activos
    </a>
</li>
</ul>
@endif
