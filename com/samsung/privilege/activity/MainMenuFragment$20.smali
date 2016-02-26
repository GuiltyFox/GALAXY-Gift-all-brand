.class Lcom/samsung/privilege/activity/MainMenuFragment$20;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;->checkNFC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$20;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    .line 2686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2689
    packed-switch p2, :pswitch_data_12

    .line 2700
    :goto_3
    return-void

    .line 2694
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$20;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 2689
    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_4
    .end packed-switch
.end method
