.class Lcom/samsung/privilege/activity/RequestHelpActivity$6;
.super Ljava/lang/Object;
.source "RequestHelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity;->doLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

.field private final synthetic val$isLike:Z

.field private final synthetic val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$6;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    iput-boolean p2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$6;->val$isLike:Z

    iput-object p3, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$6;->val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    .line 1145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$6;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;

    iget-boolean v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$6;->val$isLike:Z

    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$6;->val$tagLike:Lcom/samsung/privilege/bean/TagLikeMarketReview;

    # invokes: Lcom/samsung/privilege/activity/RequestHelpActivity;->actionLike(ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/RequestHelpActivity;->access$17(Lcom/samsung/privilege/activity/RequestHelpActivity;ZLcom/samsung/privilege/bean/TagLikeMarketReview;)V

    .line 1153
    return-void
.end method
