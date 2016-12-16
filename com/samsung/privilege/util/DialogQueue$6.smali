.class final Lcom/samsung/privilege/util/DialogQueue$6;
.super Ljava/lang/Object;
.source "DialogQueue.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogQueue;->a(Landroid/content/Context;Lcom/bzbs/bean/Place;Lcom/bzbs/bean/QueueItem;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 203
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogQueue$6;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogQueue$6;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 207
    return-void
.end method
