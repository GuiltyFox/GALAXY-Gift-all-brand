.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$10;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Lcom/bzbs/lib/survey/control/VideoControllerView$OnRqExitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    .prologue
    .line 3140
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$10;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRqExit()V
    .registers 2

    .prologue
    .line 3143
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$10;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->finish()V

    .line 3144
    return-void
.end method
