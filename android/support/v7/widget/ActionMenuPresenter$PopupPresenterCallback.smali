.class Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .registers 2

    .prologue
    .line 766
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V
    .registers 3

    .prologue
    .line 766
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 5

    .prologue
    .line 778
    instance-of v0, p1, Landroid/support/v7/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_c

    .line 779
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 781
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a()Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 782
    if-eqz v0, :cond_17

    .line 783
    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->a(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 785
    :cond_17
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 769
    if-nez p1, :cond_4

    .line 773
    :goto_3
    return v1

    .line 771
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, v2, Landroid/support/v7/widget/ActionMenuPresenter;->h:I

    .line 772
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->a()Landroid/support/v7/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_21

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->a(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v0

    :goto_1f
    move v1, v0

    goto :goto_3

    :cond_21
    move v0, v1

    goto :goto_1f
.end method
