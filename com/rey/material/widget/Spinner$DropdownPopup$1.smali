.class Lcom/rey/material/widget/Spinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/widget/Spinner$DropdownPopup;
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/widget/Spinner$DropdownPopup;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/Spinner$DropdownPopup;)V
    .registers 2

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$1;->a:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$1;->a:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->l()V

    .line 1206
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$DropdownPopup$1;->a:Lcom/rey/material/widget/Spinner$DropdownPopup;

    invoke-static {v0}, Lcom/rey/material/widget/Spinner$DropdownPopup;->a(Lcom/rey/material/widget/Spinner$DropdownPopup;)V

    .line 1207
    return-void
.end method
