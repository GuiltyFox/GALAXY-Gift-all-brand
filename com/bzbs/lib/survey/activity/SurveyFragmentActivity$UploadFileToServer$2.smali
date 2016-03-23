.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$2;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Lcom/bzbs/lib/survey/util/http/AndroidMultiPartEntity$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->uploadFile()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;)V
    .registers 2
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    .prologue
    .line 3954
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$2;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(J)V
    .registers 10
    .param p1, "num"    # J

    .prologue
    .line 3958
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$2;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    long-to-float v3, p1

    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$2;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-wide v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->totalSize:J

    long-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->access$4700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;[Ljava/lang/Object;)V

    .line 3959
    return-void
.end method
