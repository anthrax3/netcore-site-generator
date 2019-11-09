﻿<header>
  <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-white border-bottom box-shadow mb-3">
    <div class="container">
      <a class="navbar-brand" [routerLink]="['/']">WebApplication</a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target=".navbar-collapse"
        aria-label="Toggle navigation"
        [attr.aria-expanded]="isExpanded"
        (click)="toggle()">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div
        class="navbar-collapse collapse d-sm-inline-flex flex-sm-row-reverse"
        [ngClass]="{ show: isExpanded }"
      >
        <ul class="navbar-nav flex-grow">
          <li
            class="nav-item"
            [routerLinkActive]="['link-active']"
            [routerLinkActiveOptions]="{ exact: true }">
            <a class="nav-link text-dark" [routerLink]="['/']">Home</a>
          </li>
          <li class="nav-item" [routerLinkActive]="['link-active']">
            <a class="nav-link text-dark" [routerLink]="['/counter']">Counter</a>
          </li>
          <li class="nav-item" [routerLinkActive]="['link-active']">
            <a class="nav-link text-dark" [routerLink]="['/fetch-data']">Fetch data</a>
          </li>
		  {{#Entities}}
			<li class="nav-item" [routerLinkActive]="['link-active']">
				<a class="nav-link text-dark" [routerLink]="['/{{Name}}']">{{Name}}</a>
			</li>
		 {{/Entities}}
        </ul>
      </div>
    </div>
  </nav>
</header>
