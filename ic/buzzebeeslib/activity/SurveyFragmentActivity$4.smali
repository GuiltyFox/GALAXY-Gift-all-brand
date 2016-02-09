.class Lic/buzzebeeslib/activity/SurveyFragmentActivity$4;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/SurveyFragmentActivity;->initialLayout()V
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$4;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 329
    iget-object v0, p0, Lic/buzzebeeslib/activity/SurveyFragmentActivity$4;->this$0:Lic/buzzebeeslib/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/SurveyFragmentActivity;->reset()V

    .line 330
    return-void
.end method
