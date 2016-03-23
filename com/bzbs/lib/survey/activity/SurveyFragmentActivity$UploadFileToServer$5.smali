.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$5;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$textError:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    .prologue
    .line 4064
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$5;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$5;->val$textError:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 4066
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$5;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;

    iget-object v0, v0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$UploadFileToServer$5;->val$textError:Ljava/lang/String;

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 4067
    return-void
.end method
