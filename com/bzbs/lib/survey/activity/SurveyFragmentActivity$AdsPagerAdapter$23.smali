.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$23;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;)V
    .registers 2
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    .prologue
    .line 1967
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 15
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 1969
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ge v1, p3, :cond_34

    .line 1970
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1972
    .local v0, "checkMe":Ljava/lang/String;
    const-string/jumbo v5, "[\\^:\\\"\\\'\\\\,]"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1973
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1974
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    .line 1975
    .local v4, "valid":Z
    if-eqz v4, :cond_31

    .line 1976
    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v5, v5, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    iget-object v6, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter$23;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;

    iget-object v6, v6, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$AdsPagerAdapter;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    sget v7, Lcom/bzbs/lib/survey/R$string;->msg_alert_survey_character:I

    invoke-virtual {v6, v7}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$700(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;Ljava/lang/String;)V

    .line 1977
    const-string/jumbo v5, ""

    .line 1980
    .end local v0    # "checkMe":Ljava/lang/String;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    .end local v4    # "valid":Z
    :goto_30
    return-object v5

    .line 1969
    .restart local v0    # "checkMe":Ljava/lang/String;
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "pattern":Ljava/util/regex/Pattern;
    .restart local v4    # "valid":Z
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1980
    .end local v0    # "checkMe":Ljava/lang/String;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    .end local v4    # "valid":Z
    :cond_34
    const/4 v5, 0x0

    goto :goto_30
.end method
