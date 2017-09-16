.class public Lcom/samsung/privilege/activity/WalletTopupCashActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "WalletTopupCashActivity.java"


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field protected a:Landroid/os/CountDownTimer;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-class v0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/WalletTopupCashActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x3e8

    .line 148
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "expirein"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 150
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "code_format"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 152
    const v1, 0x7f100157

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 153
    const v1, 0x7f100158

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    const v1, 0x7f100159

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 155
    const v1, 0x7f10015b

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 156
    const v1, 0x7f10015d

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 157
    const v1, 0x7f10015e

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 159
    const v1, 0x7f100156

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 160
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    new-instance v0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/WalletTopupCashActivity$1;-><init>(Lcom/samsung/privilege/activity/WalletTopupCashActivity;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    new-instance v0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/privilege/activity/WalletTopupCashActivity$2;-><init>(Lcom/samsung/privilege/activity/WalletTopupCashActivity;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const-string/jumbo v0, "barcode"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 205
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->performClick()Z

    .line 210
    :goto_87
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->a:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_90

    .line 211
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->a:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 214
    :cond_90
    new-instance v0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;

    mul-long v2, v8, v12

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;-><init>(Lcom/samsung/privilege/activity/WalletTopupCashActivity;JJLandroid/widget/TextView;Landroid/widget/TextView;)V

    .line 226
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/WalletTopupCashActivity$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->a:Landroid/os/CountDownTimer;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a0} :catch_ab

    .line 231
    :goto_a0
    invoke-static {p0}, Lcom/samsung/privilege/util/ScreenUtil;->c(Landroid/app/Activity;)V

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->d:Z

    .line 233
    return-void

    .line 207
    :cond_a7
    :try_start_a7
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->performClick()Z
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_ab

    goto :goto_87

    .line 227
    :catch_ab
    move-exception v0

    goto :goto_a0
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->finish()V

    .line 237
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 53
    const v0, 0x7f040062

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->setContentView(I)V

    .line 54
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->setTheme(I)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->c:Landroid/os/Handler;

    .line 58
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->g()V

    .line 59
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->e:Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->b(Lcom/bzbs/event/WalletEvents$WalletListener;)V

    .line 75
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->d:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 76
    invoke-static {p0}, Lcom/samsung/privilege/util/ScreenUtil;->d(Landroid/app/Activity;)V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->d:Z

    .line 79
    :cond_13
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 63
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 65
    new-instance v0, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;-><init>(Lcom/samsung/privilege/activity/WalletTopupCashActivity;Lcom/samsung/privilege/activity/WalletTopupCashActivity$1;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->e:Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;

    .line 66
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletTopupCashActivity;->e:Lcom/samsung/privilege/activity/WalletTopupCashActivity$WalletListener;

    invoke-static {v0}, Lcom/bzbs/event/WalletEvents;->a(Lcom/bzbs/event/WalletEvents$WalletListener;)V

    .line 67
    return-void
.end method
