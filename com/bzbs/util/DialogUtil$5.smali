.class final Lcom/bzbs/util/DialogUtil$5;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/util/DialogUtil;->a(Landroid/app/Activity;Landroid/os/Handler;Lcom/bzbs/bean/Campaign;Lcom/bzbs/bean/NFCTag;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 253
    iput-object p1, p0, Lcom/bzbs/util/DialogUtil$5;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/bzbs/util/DialogUtil$5;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 256
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bzbs/util/DialogUtil;->a:Z

    .line 257
    return-void
.end method
