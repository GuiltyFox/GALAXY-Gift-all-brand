.class Lcom/samsung/privilege/activity/MainPagerActivity$8;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->onResume()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2

    .prologue
    .line 775
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$8;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 779
    const/4 v0, 0x0

    .line 780
    :try_start_2
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$8;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->d(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 781
    iget-object v2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$8;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/MainPagerActivity;->d(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->b()I

    move-result v2

    if-nez v2, :cond_17

    move v0, v1

    .line 788
    :cond_17
    :goto_17
    if-ne v0, v1, :cond_1e

    .line 789
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$8;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/MainPagerActivity;->e(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_21

    .line 794
    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    move v0, v1

    .line 785
    goto :goto_17

    .line 791
    :catch_21
    move-exception v0

    goto :goto_1e
.end method
