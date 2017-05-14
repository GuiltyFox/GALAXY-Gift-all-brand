.class Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;-><init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/AppCompatSpinner;

.field final synthetic b:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/support/v7/widget/AppCompatSpinner;)V
    .registers 3

    .prologue
    .line 706
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->b:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iput-object p2, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 709
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->b:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 710
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->b:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 711
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->b:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->b:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    .line 712
    invoke-static {v1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->a(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/widget/AppCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 714
    :cond_22
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->b:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->dismiss()V

    .line 715
    return-void
.end method
