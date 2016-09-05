.class Lcom/rey/material/widget/Spinner$3;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/material/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/Spinner;)V
    .registers 2

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/rey/material/widget/Spinner$3;->a:Lcom/rey/material/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$3;->a:Lcom/rey/material/widget/Spinner;

    invoke-static {v0}, Lcom/rey/material/widget/Spinner;->a(Lcom/rey/material/widget/Spinner;)V

    .line 1040
    iget-object v0, p0, Lcom/rey/material/widget/Spinner$3;->a:Lcom/rey/material/widget/Spinner;

    invoke-virtual {v0}, Lcom/rey/material/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1041
    if-eqz v0, :cond_10

    .line 1042
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1043
    :cond_10
    return-void
.end method
