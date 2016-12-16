.class Lcom/samsung/privilege/activity/ProfileActivity$9;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->i()V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/DatePickerDialog;

.field final synthetic b:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/app/DatePickerDialog;)V
    .registers 3

    .prologue
    .line 402
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$9;->b:Lcom/samsung/privilege/activity/ProfileActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/ProfileActivity$9;->a:Landroid/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$9;->a:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 406
    return-void
.end method
