.class final Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ToolbarActionBar;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
    .registers 2

    .prologue
    .line 625
    iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ToolbarActionBar;Landroid/support/v7/app/ToolbarActionBar$1;)V
    .registers 3

    .prologue
    .line 625
    invoke-direct {p0, p1}, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/ToolbarActionBar;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 5

    .prologue
    .line 628
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->a(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 629
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->a(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 631
    :cond_12
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 4

    .prologue
    .line 635
    if-nez p1, :cond_14

    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->a(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 636
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-static {v0}, Landroid/support/v7/app/ToolbarActionBar;->a(Landroid/support/v7/app/ToolbarActionBar;)Landroid/view/Window$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 638
    :cond_14
    const/4 v0, 0x1

    return v0
.end method
