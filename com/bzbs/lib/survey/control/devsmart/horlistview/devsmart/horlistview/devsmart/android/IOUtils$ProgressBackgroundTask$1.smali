.class Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$1;
.super Ljava/lang/Object;
.source "IOUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;->postProgress(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$max:I

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;IILjava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$1;->this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;

    iput p2, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$1;->val$value:I

    iput p3, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$1;->val$max:I

    iput-object p4, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$1;->val$description:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$1;->this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;

    # getter for: Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;->mListener:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$ProgressListener;
    invoke-static {v0}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;->access$000(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;)Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$ProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$1;->this$0:Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;

    iget v2, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$1;->val$value:I

    iget v3, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$1;->val$max:I

    iget-object v4, p0, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$1;->val$description:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask$ProgressListener;->onProgress(Lcom/bzbs/lib/survey/control/devsmart/horlistview/devsmart/horlistview/devsmart/android/IOUtils$ProgressBackgroundTask;IILjava/lang/String;)V

    .line 102
    return-void
.end method
