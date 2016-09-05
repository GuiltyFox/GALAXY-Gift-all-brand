.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$12;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)V
    .registers 2

    .prologue
    .line 3460
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$12;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 3462
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3463
    iget-object v0, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$12;->a:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    invoke-virtual {v0}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->finish()V

    .line 3464
    return-void
.end method
