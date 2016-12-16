.class final Lcom/samsung/privilege/util/DialogOTPUtil$7;
.super Ljava/lang/Object;
.source "DialogOTPUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$7;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$7;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 168
    return-void
.end method
