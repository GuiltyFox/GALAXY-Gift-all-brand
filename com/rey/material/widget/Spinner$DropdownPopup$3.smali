.class Lcom/rey/material/widget/Spinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/material/widget/Spinner$DropdownPopup;->a(Landroid/widget/ListAdapter;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/widget/Spinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/Spinner$DropdownPopup;)V
    .registers 2

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$3;->a:Lcom/rey/material/widget/Spinner$DropdownPopup;

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
    .line 1243
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$3;->a:Lcom/rey/material/widget/Spinner$DropdownPopup;

    iget-object v0, v0, Lcom/rey/material/widget/Spinner$DropdownPopup;->b:Lcom/rey/material/widget/Spinner;

    iget-object v1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$3;->a:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-static {v1}, Lcom/rey/material/widget/Spinner$DropdownPopup;->c(Lcom/rey/material/widget/Spinner$DropdownPopup;)Lcom/rey/material/widget/Spinner$DropDownAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/rey/material/widget/Spinner$DropDownAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Lcom/rey/material/widget/Spinner;->a(Landroid/view/View;IJ)Z

    .line 1244
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$3;->a:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->g()V

    .line 1245
    return-void
.end method
