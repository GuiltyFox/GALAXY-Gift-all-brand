.class Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->show()V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
    .registers 2

    .prologue
    .line 794
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->a:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .prologue
    .line 797
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->a:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->a:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0, v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 798
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->a:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    .line 806
    :goto_11
    return-void

    .line 800
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->a:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->b()V

    .line 804
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;->a:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->b(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V

    goto :goto_11
.end method
