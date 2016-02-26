.class Lcom/samsung/privilege/activity/ProfileSettingActivity$6;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileSettingActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

.field private final synthetic val$dateFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;Ljava/text/SimpleDateFormat;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;->val$dateFormatter:Ljava/text/SimpleDateFormat;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 9
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 776
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 777
    .local v0, "newDate":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 778
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    # getter for: Lcom/samsung/privilege/activity/ProfileSettingActivity;->gTvBirthday:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/samsung/privilege/activity/ProfileSettingActivity;->access$2(Lcom/samsung/privilege/activity/ProfileSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$6;->val$dateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    return-void
.end method
