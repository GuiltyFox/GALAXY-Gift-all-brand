.class Lcom/samsung/privilege/activity/StampBranchActivity$5$2;
.super Ljava/lang/Object;
.source "StampBranchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampBranchActivity$5;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampBranchActivity$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampBranchActivity$5;)V
    .registers 2

    .prologue
    .line 333
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$2;->a:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$5$2;->a:Lcom/samsung/privilege/activity/StampBranchActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampBranchActivity$5;->b:Lcom/samsung/privilege/activity/StampBranchActivity;

    const v1, 0x7f10011d

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 337
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 338
    return-void
.end method
