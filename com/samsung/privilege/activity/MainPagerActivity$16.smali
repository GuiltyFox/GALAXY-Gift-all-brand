.class Lcom/samsung/privilege/activity/MainPagerActivity$16;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->networkAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$16;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1220
    const/4 v0, 0x0

    .line 1221
    .local v0, "need_to_refresh":Z
    :try_start_1
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$16;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$600(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 1222
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$16;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # getter for: Lcom/samsung/privilege/activity/MainPagerActivity;->gAdapter:Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;
    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$600(Lcom/samsung/privilege/activity/MainPagerActivity;)Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/MainPagerActivity$FragmentPagerItemCustomAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_16

    .line 1223
    const/4 v0, 0x1

    .line 1229
    :cond_16
    :goto_16
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 1230
    iget-object v1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$16;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    # invokes: Lcom/samsung/privilege/activity/MainPagerActivity;->checkCacheAndLoadNew()V
    invoke-static {v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->access$700(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_21

    .line 1235
    :cond_1e
    :goto_1e
    return-void

    .line 1226
    :cond_1f
    const/4 v0, 0x1

    goto :goto_16

    .line 1232
    :catch_21
    move-exception v1

    goto :goto_1e
.end method
