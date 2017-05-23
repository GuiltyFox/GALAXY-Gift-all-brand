.class Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;
.super Ljava/lang/Object;
.source "AdminServerConfig2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->doUseThisSetting(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;)V
    .registers 2

    .prologue
    .line 128
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 132
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f100235

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f100236

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->S:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f100237

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->T:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f100238

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v2, 0x7f100239

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->n(Landroid/content/Context;Ljava/lang/String;)Z

    .line 141
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f10023a

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->q:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f10023b

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->r:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f10023c

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->t:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f10023d

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->y:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f10023e

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->z:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f10023f

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->B:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->a:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->a(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;)V

    .line 159
    return-void
.end method
