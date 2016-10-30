.class Lcom/samsung/privilege/activity/MainPagerActivity$12$1;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity$12;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity$12;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity$12;)V
    .registers 2

    .prologue
    .line 990
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$12$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 993
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$12$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$12;

    iget-object v0, v0, Lcom/samsung/privilege/activity/MainPagerActivity$12;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$12$1;->a:Lcom/samsung/privilege/activity/MainPagerActivity$12;

    iget-boolean v1, v1, Lcom/samsung/privilege/activity/MainPagerActivity$12;->d:Z

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;Z)V

    .line 994
    return-void
.end method
