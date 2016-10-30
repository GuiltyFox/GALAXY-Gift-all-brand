.class final Lcom/samsung/privilege/util/ResumeUtil$5;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/ResumeUtil;->b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 459
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$5;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 461
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 462
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$5;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;Z)V

    .line 463
    return-void
.end method
