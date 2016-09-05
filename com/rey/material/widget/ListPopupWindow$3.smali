.class Lcom/rey/material/widget/ListPopupWindow$3;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rey/material/widget/ListPopupWindow;->m()I
.end annotation


# instance fields
.field final synthetic a:Lcom/rey/material/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/rey/material/widget/ListPopupWindow;)V
    .registers 2

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/rey/material/widget/ListPopupWindow$3;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$3;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow;->b()Landroid/view/View;

    move-result-object v0

    .line 1097
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1098
    iget-object v0, p0, Lcom/rey/material/widget/ListPopupWindow$3;->a:Lcom/rey/material/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/rey/material/widget/ListPopupWindow;->f()V

    .line 1100
    :cond_13
    return-void
.end method
