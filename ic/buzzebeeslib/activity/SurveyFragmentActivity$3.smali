.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$3;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity;->initialParam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$3;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$3;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    # invokes: Lic/buzzebeeslib/activity/SurveyFragmentActivity;->initialLayout()V
    invoke-static {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->access$37(Lic/buzzebeeslib/activity/SurveyFragmentActivity;)V

    .line 312
    return-void
.end method
