.class Lcom/samsung/privilege/activity/MainPagerActivity$26;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->doNotification(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2

    .prologue
    .line 1961
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$26;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$26;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$26;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->g(Lcom/samsung/privilege/activity/MainPagerActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/DialogNotification;->a(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1965
    return-void
.end method
