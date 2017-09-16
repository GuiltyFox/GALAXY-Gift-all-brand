.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$3;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;->c(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 1151
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$3;->a:Ljava/lang/String;

    const-string/jumbo v1, "stamp_create"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1154
    :try_start_16
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->h(Lcom/samsung/privilege/activity/StampDetailGiftActivity;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 1159
    :cond_1d
    :goto_1d
    return-void

    .line 1155
    :catch_1e
    move-exception v0

    .line 1156
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener$3;->b:Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;

    iget-object v1, v1, Lcom/samsung/privilege/activity/StampDetailGiftActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity;

    const v2, 0x7f0901d5

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/StampDetailGiftActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d
.end method
