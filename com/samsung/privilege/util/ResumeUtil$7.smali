.class final Lcom/samsung/privilege/util/ResumeUtil$7;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/ResumeUtil;->c(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 494
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$7;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 496
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 497
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$7;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->o(Landroid/content/Context;Z)Z

    .line 498
    return-void
.end method
