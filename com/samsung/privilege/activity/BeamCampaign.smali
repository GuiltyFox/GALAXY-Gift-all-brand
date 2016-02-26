.class public Lcom/samsung/privilege/activity/BeamCampaign;
.super Landroid/app/Activity;
.source "BeamCampaign.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


# static fields
.field private static final MESSAGE_SENT:I = 0x1


# instance fields
.field private gLayoutComplete:Landroid/widget/RelativeLayout;

.field private gLayoutWait:Landroid/widget/RelativeLayout;

.field private gStrNFCWriteBack:Ljava/lang/String;

.field private gStrPrivilegeMessage:Ljava/lang/String;

.field private gStrSerial:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gStrSerial:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gStrPrivilegeMessage:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gStrNFCWriteBack:Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/samsung/privilege/activity/BeamCampaign$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/BeamCampaign$1;-><init>(Lcom/samsung/privilege/activity/BeamCampaign;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/BeamCampaign;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/BeamCampaign;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gLayoutWait:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/BeamCampaign;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gLayoutComplete:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/BeamCampaign;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gStrNFCWriteBack:Ljava/lang/String;

    return-void
.end method

.method private initialLayout()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 109
    const v3, 0x7f0c0068

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/BeamCampaign;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 111
    .local v0, "webPrivilegeMessage":Landroid/webkit/WebView;
    iget-object v7, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gStrPrivilegeMessage:Ljava/lang/String;

    .line 112
    .local v7, "str_privilege_message":Ljava/lang/String;
    const-string v3, "<serial>"

    iget-object v4, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gStrSerial:Ljava/lang/String;

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<head><style>@font-face {font-family: \'verdana\';src: url(\'file:///android_asset/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\');}body {font-family: \'verdana\';font-size:18pt;font-style:normal;}</style></head>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, "head":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<html>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<body>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</body></html>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "htmlData":Ljava/lang/String;
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private initialParam()V
    .registers 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Serial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gStrSerial:Ljava/lang/String;

    .line 103
    const-string v1, "PrivilegeMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gStrPrivilegeMessage:Ljava/lang/String;

    .line 104
    const-string v1, "NFCWriteBack"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gStrNFCWriteBack:Ljava/lang/String;

    .line 105
    const-string v1, "paramNFCTag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/privilege/bean/NFCTag;

    iput-object v1, p0, Lcom/samsung/privilege/activity/BeamCampaign;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    .line 106
    return-void
.end method


# virtual methods
.method public createMimeRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .registers 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .prologue
    .line 210
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 211
    .local v0, "mimeBytes":[B
    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x2

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-direct {v1, v2, v0, v3, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 212
    .local v1, "mimeRecord":Landroid/nfc/NdefRecord;
    return-object v1
.end method

.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .registers 9
    .param p1, "event"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 127
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 128
    .local v2, "time":Landroid/text/format/Time;
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 132
    const-string v1, ""

    .line 133
    .local v1, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gStrNFCWriteBack:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gStrNFCWriteBack:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 134
    iget-object v1, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gStrNFCWriteBack:Ljava/lang/String;

    .line 137
    :cond_1a
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    const-string v5, "application/com.samsung.privilege.android.beam"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/privilege/activity/BeamCampaign;->createMimeRecord(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 147
    .local v0, "msg":Landroid/nfc/NdefMessage;
    return-object v0
.end method

.method public doGoToCloseBeam(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 240
    iget-object v2, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gLayoutComplete:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_30

    .line 241
    iget-object v2, p0, Lcom/samsung/privilege/activity/BeamCampaign;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v2, :cond_30

    .line 242
    iget-object v2, p0, Lcom/samsung/privilege/activity/BeamCampaign;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v2, v2, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    if-eqz v2, :cond_30

    .line 243
    const-string v2, "content://someURI"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 244
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "NextNFCTag"

    iget-object v3, p0, Lcom/samsung/privilege/activity/BeamCampaign;->paramNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    iget-object v3, v3, Lcom/samsung/privilege/bean/NFCTag;->NextNFCTag:Lcom/samsung/privilege/bean/NFCTag;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 246
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/samsung/privilege/activity/BeamCampaign;->setResult(ILandroid/content/Intent;)V

    .line 252
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_30
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->finish()V

    .line 253
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v4, 0x7f03001f

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/BeamCampaign;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 70
    .local v0, "font":Landroid/graphics/Typeface;
    const v4, 0x7f0c0064

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/BeamCampaign;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    .local v3, "tvStatus":Landroid/widget/TextView;
    const v4, 0x7f0c0066

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/BeamCampaign;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    .local v1, "tvCancel":Landroid/widget/TextView;
    const v4, 0x7f0c006a

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/BeamCampaign;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 75
    .local v2, "tvClose":Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/privilege/activity/BeamCampaign;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 83
    iget-object v4, p0, Lcom/samsung/privilege/activity/BeamCampaign;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v4, :cond_56

    .line 86
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "NFC is not available on this device."

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 89
    :cond_56
    iget-object v4, p0, Lcom/samsung/privilege/activity/BeamCampaign;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v5, v7, [Landroid/app/Activity;

    invoke-virtual {v4, p0, p0, v5}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 91
    iget-object v4, p0, Lcom/samsung/privilege/activity/BeamCampaign;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v5, v7, [Landroid/app/Activity;

    invoke-virtual {v4, p0, p0, v5}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 93
    const v4, 0x7f0c0062

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/BeamCampaign;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gLayoutWait:Landroid/widget/RelativeLayout;

    .line 94
    const v4, 0x7f0c0067

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/BeamCampaign;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/privilege/activity/BeamCampaign;->gLayoutComplete:Landroid/widget/RelativeLayout;

    .line 96
    invoke-direct {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->initialParam()V

    .line 97
    invoke-direct {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->initialLayout()V

    .line 98
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 218
    iget-object v1, p0, Lcom/samsung/privilege/activity/BeamCampaign;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_9

    .line 219
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 223
    :goto_8
    return v1

    .line 221
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 222
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 223
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .registers 4
    .param p1, "arg0"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/privilege/activity/BeamCampaign;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 158
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/samsung/privilege/activity/BeamCampaign;->setIntent(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    .line 230
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NFCSHARING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/BeamCampaign;->startActivity(Landroid/content/Intent;)V

    .line 232
    const/4 v1, 0x1

    goto :goto_b

    .line 228
    :pswitch_data_18
    .packed-switch 0x7f0c039a
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 180
    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 181
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/BeamCampaign;->processIntent(Landroid/content/Intent;)V

    .line 184
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/BeamCampaign;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method processIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    const-string v2, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 199
    .local v1, "rawMsgs":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    aget-object v0, v1, v2

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 202
    .local v0, "msg":Landroid/nfc/NdefMessage;
    return-void
.end method
