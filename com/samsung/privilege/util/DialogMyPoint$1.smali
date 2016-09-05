.class final Lcom/samsung/privilege/util/DialogMyPoint$1;
.super Ljava/lang/Object;
.source "DialogMyPoint.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogMyPoint;->a(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 71
    invoke-static {}, Lcom/samsung/privilege/util/DialogMyPoint;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 72
    return-void
.end method
