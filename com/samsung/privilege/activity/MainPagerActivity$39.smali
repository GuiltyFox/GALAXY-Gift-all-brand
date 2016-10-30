.class Lcom/samsung/privilege/activity/MainPagerActivity$39;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->t()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/MainPagerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;)V
    .registers 2

    .prologue
    .line 2753
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$39;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 2756
    packed-switch p2, :pswitch_data_12

    .line 2767
    :goto_3
    return-void

    .line 2761
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$39;->a:Lcom/samsung/privilege/activity/MainPagerActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainPagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 2756
    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method
