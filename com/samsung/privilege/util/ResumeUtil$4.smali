.class final Lcom/samsung/privilege/util/ResumeUtil$4;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/ResumeUtil;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 433
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$4;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 435
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 437
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$4;->a:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Z)V

    .line 438
    return-void
.end method
