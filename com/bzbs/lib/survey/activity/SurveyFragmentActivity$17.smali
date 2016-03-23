.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$17;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->AlertCameraDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

.field final synthetic val$arrayAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Landroid/widget/ArrayAdapter;)V
    .registers 3
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 4104
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$17;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iput-object p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$17;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 4108
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$17;->val$arrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4109
    .local v0, "strName":Ljava/lang/String;
    const-string/jumbo v1, "Take Photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 4110
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$17;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->takePicture(Landroid/view/View;)V

    .line 4114
    :goto_17
    return-void

    .line 4112
    :cond_18
    iget-object v1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$17;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v1, v2}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->openGallery(Landroid/view/View;)V

    goto :goto_17
.end method
