.class public Lcom/samsung/privilege/activity/AdminTestServerActivity;
.super Landroid/app/Activity;
.source "AdminTestServerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;,
        Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;
    }
.end annotation


# instance fields
.field private etURL:Landroid/widget/EditText;

.field private gStrData:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private tvDesc:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->gStrData:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->gStrData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/activity/AdminTestServerActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->gStrData:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/samsung/privilege/activity/AdminTestServerActivity;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->tvDesc:Landroid/widget/TextView;

    return-object v0
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/AdminTestServerActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/AdminTestServerActivity$1;-><init>(Lcom/samsung/privilege/activity/AdminTestServerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    return-void
.end method


# virtual methods
.method public doCopyText(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    const v2, 0x7f140007

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 222
    .local v1, "tvDesc":Landroid/widget/TextView;
    const-string v2, "clipboard"

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 223
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const-string v2, "Text copy to clipboard."

    invoke-direct {p0, v2}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->showToast(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public doGet(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    iget-object v2, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<font color=blue>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</font><br>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->gStrData:Ljava/lang/String;

    .line 181
    iget-object v2, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->tvDesc:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->gStrData:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 183
    const/high16 v2, 0x7f140000

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 185
    .local v0, "spinnerCommand":Landroid/widget/Spinner;
    new-instance v2, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;-><init>(Lcom/samsung/privilege/activity/AdminTestServerActivity;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public doPost(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<font color=blue>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</font><br>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->gStrData:Ljava/lang/String;

    .line 191
    iget-object v3, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->tvDesc:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->gStrData:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 193
    const/high16 v3, 0x7f140000

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 195
    .local v1, "spinnerCommand":Landroid/widget/Spinner;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v0, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v3, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/AdminTestServerActivity$GetTestListener;-><init>(Lcom/samsung/privilege/activity/AdminTestServerActivity;)V

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->requestWindowFeature(I)Z

    .line 47
    const v4, 0x7f03001d

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->setContentView(I)V

    .line 49
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->mHandler:Landroid/os/Handler;

    .line 52
    const v4, 0x7f140007

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->tvDesc:Landroid/widget/TextView;

    .line 53
    const v4, 0x7f140002

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;

    .line 55
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 56
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/samsung/privilege/activity/AdminTestServerActivity;->etURL:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 58
    const/high16 v4, 0x7f140000

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 59
    .local v3, "spinnerCommand":Landroid/widget/Spinner;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "BuzzeBees Token"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v4, "Resume"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v4, "Dashboard"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v4, "Permissions"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v4, "News feed"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v4, "Noti BuzzeBees(mode=new)"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v4, "Noti BuzzeBees"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    const-string v4, "Noti Facebook"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const-string v4, "Points"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v4, "Scores"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v4, "Market Campaign"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v4, "Market Campaign Category"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v4, "Friend Global"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v4, "Friend List"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v4, "Badges"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    const-string v4, "Places"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v4, "Sponsor Promotion"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v4, "Stickers"

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, p0, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 79
    .local v0, "dataAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 80
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 82
    new-instance v4, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;-><init>(Lcom/samsung/privilege/activity/AdminTestServerActivity;Lcom/samsung/privilege/activity/AdminTestServerActivity$CustomOnItemSelectedListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 83
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/AdminTestServerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    return-void
.end method
