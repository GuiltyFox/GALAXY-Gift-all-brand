.class Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;
.super Landroid/support/v7/view/WindowCallbackWrapper;
.source "ToolbarActionBar.java"


# instance fields
.field final synthetic a:Landroid/support/v7/app/ToolbarActionBar;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ToolbarActionBar;Landroid/view/Window$Callback;)V
    .registers 3

    .prologue
    .line 561
    iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->a:Landroid/support/v7/app/ToolbarActionBar;

    .line 562
    invoke-direct {p0, p2}, Landroid/support/v7/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    .line 563
    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .registers 4

    .prologue
    .line 577
    packed-switch p1, :pswitch_data_24

    .line 585
    :cond_3
    invoke-super {p0, p1}, Landroid/support/v7/view/WindowCallbackWrapper;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    :goto_7
    return-object v0

    .line 579
    :pswitch_8
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->a:Landroid/support/v7/app/ToolbarActionBar;

    iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 580
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 581
    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->a:Landroid/support/v7/app/ToolbarActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ToolbarActionBar;->a(Landroid/view/Menu;)Landroid/view/View;

    move-result-object v0

    goto :goto_7

    .line 577
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7

    .prologue
    .line 567
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 568
    if-eqz v0, :cond_18

    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->a:Landroid/support/v7/app/ToolbarActionBar;

    iget-boolean v1, v1, Landroid/support/v7/app/ToolbarActionBar;->b:Z

    if-nez v1, :cond_18

    .line 569
    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->a:Landroid/support/v7/app/ToolbarActionBar;

    iget-object v1, v1, Landroid/support/v7/app/ToolbarActionBar;->a:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {v1}, Landroid/support/v7/widget/DecorToolbar;->setMenuPrepared()V

    .line 570
    iget-object v1, p0, Landroid/support/v7/app/ToolbarActionBar$ToolbarCallbackWrapper;->a:Landroid/support/v7/app/ToolbarActionBar;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/app/ToolbarActionBar;->b:Z

    .line 572
    :cond_18
    return v0
.end method
