.class Lcom/samsung/privilege/activity/TestCheckinActivity$2;
.super Ljava/lang/Object;
.source "TestCheckinActivity.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/TestCheckinActivity;->doCheckinAPI(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/TestCheckinActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/TestCheckinActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/TestCheckinActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/samsung/privilege/activity/TestCheckinActivity$2;->this$0:Lcom/samsung/privilege/activity/TestCheckinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/privilege/activity/TestCheckinActivity$2;->this$0:Lcom/samsung/privilege/activity/TestCheckinActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCompleted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/privilege/activity/TestCheckinActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/TestCheckinActivity;->access$000(Lcom/samsung/privilege/activity/TestCheckinActivity;Ljava/lang/String;)V

    .line 79
    return-void
.end method
