.class final Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .registers 2

    .prologue
    .line 1851
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/app/AppCompatDelegateImplV9$1;)V
    .registers 3

    .prologue
    .line 1851
    invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 4

    .prologue
    .line 1863
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-static {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->a(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 1864
    return-void
.end method

.method public a(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 4

    .prologue
    .line 1854
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;->a:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->q()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1855
    if-eqz v0, :cond_d

    .line 1856
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1858
    :cond_d
    const/4 v0, 0x1

    return v0
.end method
