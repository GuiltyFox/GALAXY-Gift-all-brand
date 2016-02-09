.class Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$3;
.super Ljava/lang/Object;
.source "RequestHelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;->onPostSucceed(Ljava/lang/String;ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;

.field private final synthetic val$badgeAlerts:Ljava/util/ArrayList;

.field private final synthetic val$points:I


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;ILjava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$3;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener;

    iput p2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$3;->val$points:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$3;->val$badgeAlerts:Ljava/util/ArrayList;

    .line 1324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1328
    :try_start_0
    iget v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$3;->val$points:I

    if-lez v0, :cond_f

    .line 1329
    sget-object v0, Lcom/samsung/privilege/AppSetting;->QUEUE_POINTS:Ljava/util/Queue;

    iget v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$3;->val$points:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1331
    :cond_f
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$3;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 1332
    sget-object v0, Lcom/samsung/privilege/AppSetting;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$FBPostListener$3;->val$badgeAlerts:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 1338
    :cond_1e
    :goto_1e
    return-void

    .line 1335
    :catch_1f
    move-exception v0

    goto :goto_1e
.end method
