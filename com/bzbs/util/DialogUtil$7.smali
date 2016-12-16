.class final Lcom/bzbs/util/DialogUtil$7;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 310
    iput-object p1, p0, Lcom/bzbs/util/DialogUtil$7;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/bzbs/util/DialogUtil$7;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 313
    return-void
.end method
