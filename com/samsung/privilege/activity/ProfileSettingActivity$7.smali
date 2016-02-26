.class Lcom/samsung/privilege/activity/ProfileSettingActivity$7;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$datePickerDialogPurchase:Landroid/app/DatePickerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileSettingActivity;Landroid/app/DatePickerDialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$7;->this$0:Lcom/samsung/privilege/activity/ProfileSettingActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$7;->val$datePickerDialogPurchase:Landroid/app/DatePickerDialog;

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileSettingActivity$7;->val$datePickerDialogPurchase:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 785
    return-void
.end method
