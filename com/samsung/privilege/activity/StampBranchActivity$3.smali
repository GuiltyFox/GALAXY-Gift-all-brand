.class Lcom/samsung/privilege/activity/StampBranchActivity$3;
.super Ljava/lang/Object;
.source "StampBranchActivity.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampBranchActivity;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampBranchActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampBranchActivity;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$3;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampBranchActivity$3;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampBranchActivity$3;->a:Lcom/samsung/privilege/activity/StampBranchActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/StampBranchActivity;->c(Lcom/samsung/privilege/activity/StampBranchActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/StampBranchActivity;->a(Lcom/samsung/privilege/activity/StampBranchActivity;Ljava/lang/String;I)V

    .line 226
    return-void
.end method
