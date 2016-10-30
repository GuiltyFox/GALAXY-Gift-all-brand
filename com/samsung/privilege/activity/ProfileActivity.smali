.class public Lcom/samsung/privilege/activity/ProfileActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProfileActivity.java"


# instance fields
.field public a:Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;

.field private d:Landroid/app/ProgressDialog;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Lcom/bzbs/bean/CameraData;

.field private j:Ljava/lang/String;

.field private final k:I

.field private final l:I

.field private final m:I

.field private n:Z

.field private o:Landroid/view/View$OnTouchListener;

.field private p:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 92
    const-class v0, Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "+0000000000"

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->e:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->f:I

    .line 104
    iput v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->g:I

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->h:I

    .line 110
    new-instance v0, Lcom/bzbs/bean/CameraData;

    invoke-direct {v0}, Lcom/bzbs/bean/CameraData;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    .line 152
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->k:I

    .line 153
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->l:I

    .line 154
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->m:I

    .line 800
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->n:Z

    .line 801
    new-instance v0, Lcom/samsung/privilege/activity/ProfileActivity$16;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/ProfileActivity$16;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->o:Landroid/view/View$OnTouchListener;

    .line 809
    new-instance v0, Lcom/samsung/privilege/activity/ProfileActivity$17;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/ProfileActivity$17;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->p:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 794
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 796
    const-string/jumbo v0, "gCategoryConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->j:Ljava/lang/String;

    .line 798
    :cond_1a
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 238
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->c:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/ProfileActivity$1;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/ProfileActivity;Z)Z
    .registers 2

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->n:Z

    return p1
.end method

.method private a(Ljava/lang/CharSequence;)Z
    .registers 3

    .prologue
    .line 1403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1404
    const/4 v0, 0x0

    .line 1406
    :goto_7
    return v0

    :cond_8
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_7
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 1038
    const v0, 0x7f1001be

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1039
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1041
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v4, v1

    .line 1042
    :goto_13
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_e6

    move-result v1

    if-ge v4, v1, :cond_e7

    .line 1044
    :try_start_19
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1045
    const-string/jumbo v2, "id"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    .line 1046
    const-string/jumbo v2, "name_th"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1047
    const-string/jumbo v2, "name_en"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1048
    const-string/jumbo v3, "active"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1050
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1051
    const v3, 0x7f040046

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1053
    const v1, 0x7f1001bf

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1054
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    const v1, 0x7f1001c0

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1057
    const v2, 0x7f1001c2

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1058
    const v3, 0x7f1001c1

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1059
    new-instance v8, Lcom/samsung/privilege/activity/ProfileActivity$19;

    invoke-direct {v8, p0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity$19;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v8}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 1071
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 1073
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/data/UserLogin;->L(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1074
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "=false]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_cc

    .line 1075
    invoke-virtual {v3}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    .line 1076
    const-string/jumbo v3, "#2ba9e3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1077
    const-string/jumbo v1, "#ebebeb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1084
    :goto_c4
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1042
    :goto_c7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_13

    .line 1079
    :cond_cc
    invoke-virtual {v3}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    .line 1080
    const-string/jumbo v3, "#ebebeb"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1081
    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_e3} :catch_e4

    goto :goto_c4

    .line 1085
    :catch_e4
    move-exception v1

    goto :goto_c7

    .line 1089
    :catch_e6
    move-exception v0

    .line 1092
    :cond_e7
    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/ProfileActivity;)Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/ProfileActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 20

    .prologue
    .line 1146
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_57c

    .line 1149
    :try_start_7
    const-string/jumbo v2, ""

    .line 1150
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_514

    .line 1151
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getDay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "https://graph.facebook.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/picture/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1159
    :goto_77
    const v2, 0x7f1001c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1160
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->b(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->a(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/DrawableTypeRequest;->b()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/DrawableRequestBuilder;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9b} :catch_856

    .line 1167
    :goto_9b
    :try_start_9b
    const-string v2, "SM-G935F"

    .line 1168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device: <font color=\'#2ba9e3\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1169
    const v2, 0x7f1001c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ca} :catch_568

    .line 1174
    :goto_ca
    :try_start_ca
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59e

    .line 1175
    const v2, 0x7f100139

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1176
    const v2, 0x7f1001c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    const v2, 0x7f1001c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1184
    :goto_103
    const v2, 0x7f100139

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, "Name"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    const v2, 0x7f1001c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "FirstName"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    const v2, 0x7f1001c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "LastName"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    const v2, 0x7f1001c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "ShippingFirstName"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    const v2, 0x7f1001c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "ShippingLastName"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    const-string/jumbo v2, "ShippingFirstName"

    invoke-static {v5, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1191
    const-string/jumbo v3, "ShippingLastName"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1192
    const-string/jumbo v4, "Email"

    invoke-static {v5, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1193
    const-string/jumbo v6, "Gender"

    invoke-static {v5, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1194
    const-string/jumbo v7, "Address"

    invoke-static {v5, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1195
    const-string/jumbo v8, "Zipcode"

    invoke-static {v5, v8}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1196
    const-string/jumbo v8, "BirthDate"

    invoke-static {v5, v8}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    .line 1197
    const-string/jumbo v10, "Contact_Number"

    invoke-static {v5, v10}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1198
    const-string/jumbo v11, "PhonePurchase"

    invoke-static {v5, v11}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v12

    .line 1199
    const-string/jumbo v11, "Income"

    invoke-static {v5, v11}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1200
    const-string/jumbo v14, "Interests"

    invoke-static {v5, v14}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1202
    if-eqz v2, :cond_5c9

    const-string/jumbo v15, ""

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5c9

    if-eqz v3, :cond_5c9

    const-string/jumbo v15, ""

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5c9

    if-eqz v6, :cond_5c9

    const-string/jumbo v15, ""

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c9

    if-eqz v10, :cond_5c9

    const-string/jumbo v6, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5c9

    const-wide/16 v16, 0x0

    cmp-long v6, v8, v16

    if-lez v6, :cond_5c9

    const-wide/16 v8, 0x0

    cmp-long v6, v12, v8

    if-lez v6, :cond_5c9

    .line 1203
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Z)Z

    .line 1208
    :goto_1f8
    if-eqz v4, :cond_5d3

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d3

    if-eqz v11, :cond_5d3

    const-string/jumbo v4, ""

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d3

    if-eqz v14, :cond_5d3

    const-string/jumbo v4, ""

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d3

    .line 1209
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Z)Z

    .line 1214
    :goto_221
    if-eqz v2, :cond_5dd

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5dd

    if-eqz v3, :cond_5dd

    const-string/jumbo v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5dd

    if-eqz v7, :cond_5dd

    const-string/jumbo v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5dd

    .line 1215
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Z)Z

    .line 1220
    :goto_24a
    const-string/jumbo v2, "Gender"

    invoke-static {v5, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1221
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_620

    .line 1227
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "female"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e7

    .line 1228
    const v2, 0x7f1001cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1238
    :goto_27e
    const-string/jumbo v2, "Region"

    invoke-static {v5, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1239
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_704

    .line 1240
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "northern"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_633

    .line 1241
    const v2, 0x7f1001d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09030b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    :goto_2b2
    const-string/jumbo v2, "BirthDate"

    invoke-static {v5, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1260
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_717

    .line 1261
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1262
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1264
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "dd/MM/yyyy"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1266
    const v2, 0x7f1001ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1271
    :goto_2f4
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_31c

    .line 1272
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd/MM/yyyy"

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1273
    const v2, 0x7f1001d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v4, Ljava/util/Date;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v12

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1276
    :cond_31c
    const-string/jumbo v2, "15000"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72a

    .line 1277
    const v2, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    :cond_33c
    :goto_33c
    const-string/jumbo v2, "Restaurant"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_354

    .line 1289
    const v2, 0x7f1001a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1291
    :cond_354
    const-string/jumbo v2, "Dessert"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_36c

    .line 1292
    const v2, 0x7f1001a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1294
    :cond_36c
    const-string/jumbo v2, "Entertainment"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_384

    .line 1295
    const v2, 0x7f1001a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1297
    :cond_384
    const-string/jumbo v2, "Beauty"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_39c

    .line 1298
    const v2, 0x7f1001a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1300
    :cond_39c
    const-string/jumbo v2, "Fashion"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3b4

    .line 1301
    const v2, 0x7f1001a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1303
    :cond_3b4
    const-string/jumbo v2, "Sport"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3cc

    .line 1304
    const v2, 0x7f1001a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1306
    :cond_3cc
    const-string/jumbo v2, "Travel"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3e4

    .line 1307
    const v2, 0x7f1001a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1310
    :cond_3e4
    if-eqz v10, :cond_7c2

    const-string/jumbo v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c2

    .line 1311
    const-string/jumbo v2, "+0000000000"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b2

    .line 1312
    const v2, 0x7f1001d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1320
    :goto_409
    const v2, 0x7f10019d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "Email"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    const v2, 0x7f1001aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "Address"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    const v2, 0x7f1001ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "Zipcode"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "ShippingFirstName"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1327
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "Address"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1330
    const v2, 0x7f1001af

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1331
    const-string/jumbo v3, "Locale"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1332
    const-string/jumbo v4, "1054"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7da

    .line 1333
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "402705486466922"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d5

    .line 1334
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    .line 1354
    :goto_493
    const v3, 0x7f1001b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1355
    const v4, 0x7f1001ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1356
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a()Z

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_827

    .line 1357
    const-string/jumbo v2, "#2ba9e3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1358
    const-string/jumbo v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1364
    :goto_4c4
    const v2, 0x7f1001b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1365
    const v3, 0x7f1001ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1366
    const v4, 0x7f1001b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1368
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_83d

    .line 1369
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    .line 1370
    const-string/jumbo v2, "#2ba9e3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1371
    const-string/jumbo v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1378
    :goto_507
    const-string/jumbo v2, "CategoryConfig"

    invoke-static {v5, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1379
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->b(Ljava/lang/String;)V
    :try_end_513
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_513} :catch_57c

    .line 1384
    :goto_513
    return-void

    .line 1154
    :cond_514
    :try_start_514
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_859

    .line 1155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1156
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 1157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "api/profile/me/picture?time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&type=large&token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_564
    .catch Ljava/lang/Exception; {:try_start_514 .. :try_end_564} :catch_856

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_77

    .line 1170
    :catch_568
    move-exception v2

    .line 1171
    const v2, 0x7f1001c7

    :try_start_56c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_57a
    .catch Ljava/lang/Exception; {:try_start_56c .. :try_end_57a} :catch_57c

    goto/16 :goto_ca

    .line 1381
    :catch_57c
    move-exception v2

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error while initial data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_513

    .line 1179
    :cond_59e
    const v2, 0x7f100139

    :try_start_5a1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    const v2, 0x7f1001c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1181
    const v2, 0x7f1001c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_103

    .line 1205
    :cond_5c9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Z)Z

    goto/16 :goto_1f8

    .line 1211
    :cond_5d3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Z)Z

    goto/16 :goto_221

    .line 1217
    :cond_5dd
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Z)Z

    goto/16 :goto_24a

    .line 1229
    :cond_5e7
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "male"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60d

    .line 1230
    const v2, 0x7f1001cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_27e

    .line 1232
    :cond_60d
    const v2, 0x7f1001cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_27e

    .line 1235
    :cond_620
    const v2, 0x7f1001cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_27e

    .line 1242
    :cond_633
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "northeastern"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_659

    .line 1243
    const v2, 0x7f1001d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09030a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b2

    .line 1244
    :cond_659
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "central"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67f

    .line 1245
    const v2, 0x7f1001d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090308

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b2

    .line 1246
    :cond_67f
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "eastern"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a5

    .line 1247
    const v2, 0x7f1001d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090309

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b2

    .line 1248
    :cond_6a5
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "western"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6cb

    .line 1249
    const v2, 0x7f1001d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09030d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b2

    .line 1250
    :cond_6cb
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "southern"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f1

    .line 1251
    const v2, 0x7f1001d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09030c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b2

    .line 1253
    :cond_6f1
    const v2, 0x7f1001d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b2

    .line 1256
    :cond_704
    const v2, 0x7f1001d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b2

    .line 1268
    :cond_717
    const v2, 0x7f1001ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2f4

    .line 1278
    :cond_72a
    const-string/jumbo v2, "25000"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74c

    .line 1279
    const v2, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_33c

    .line 1280
    :cond_74c
    const-string/jumbo v2, "35000"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76e

    .line 1281
    const v2, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_33c

    .line 1282
    :cond_76e
    const-string/jumbo v2, "45000"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_790

    .line 1283
    const v2, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_33c

    .line 1284
    :cond_790
    const-string/jumbo v2, "45001-"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33c

    .line 1285
    const v2, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902fe

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_33c

    .line 1314
    :cond_7b2
    const v2, 0x7f1001d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_409

    .line 1317
    :cond_7c2
    const v2, 0x7f1001d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_409

    .line 1336
    :cond_7d5
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    goto/16 :goto_493

    .line 1338
    :cond_7da
    const-string/jumbo v4, "1108"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7fe

    .line 1339
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "768830479847872"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f9

    .line 1340
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    goto/16 :goto_493

    .line 1342
    :cond_7f9
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    goto/16 :goto_493

    .line 1344
    :cond_7fe
    const-string/jumbo v4, "1109"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_822

    .line 1345
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "517155661760483"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81d

    .line 1346
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    goto/16 :goto_493

    .line 1348
    :cond_81d
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    goto/16 :goto_493

    .line 1351
    :cond_822
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    goto/16 :goto_493

    .line 1360
    :cond_827
    const-string/jumbo v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1361
    const-string/jumbo v2, "#2ba9e3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4c4

    .line 1373
    :cond_83d
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    .line 1374
    const-string/jumbo v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1375
    const-string/jumbo v2, "#2ba9e3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_854
    .catch Ljava/lang/Exception; {:try_start_5a1 .. :try_end_854} :catch_57c

    goto/16 :goto_507

    .line 1161
    :catch_856
    move-exception v2

    goto/16 :goto_9b

    :cond_859
    move-object v3, v2

    goto/16 :goto_77
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private g()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bzbs/bean/CameraData;->gIsModeTakePhoto:Z

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 226
    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bzbs/bean/CameraData;->gIsModeTakePhoto:Z

    .line 231
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 232
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string/jumbo v1, "Select Picture"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 235
    return-void
.end method

.method private i()V
    .registers 13

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 248
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 249
    const v0, 0x7f1001a2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 250
    const v0, 0x7f1001a3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    const v0, 0x7f1001a4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    const v0, 0x7f1001a5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 253
    const v0, 0x7f1001a6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    const v0, 0x7f1001a7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 255
    const v0, 0x7f1001a8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 257
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 258
    const v0, 0x7f1001c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 259
    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileActivity$2;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    :cond_8c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_315

    .line 272
    const v0, 0x7f1001d0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 278
    :goto_a9
    const v0, 0x7f1001ce

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 279
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 280
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "dd/MM/yyyy"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 281
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/samsung/privilege/activity/ProfileActivity$3;

    invoke-direct {v2, p0, v6, v3}, Lcom/samsung/privilege/activity/ProfileActivity$3;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Ljava/text/SimpleDateFormat;)V

    .line 287
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 288
    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$4;

    invoke-direct {v1, p0, v6, v0}, Lcom/samsung/privilege/activity/ProfileActivity$4;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/app/DatePickerDialog;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    const v0, 0x7f1001d1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 306
    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileActivity$5;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    const v0, 0x7f10019d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 316
    const v0, 0x7f10019d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    const v0, 0x7f10019e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    new-array v1, v9, [Ljava/lang/String;

    const v0, 0x7f0902ec

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    const v0, 0x7f0902ed

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    .line 322
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f040170

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 324
    const v0, 0x7f1001cb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 325
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$6;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity$6;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    const v0, 0x7f1001cb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 349
    const v0, 0x7f1001cb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 350
    const v0, 0x7f1001cc

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const v0, 0x7f09030b

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    const v0, 0x7f09030a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    const v0, 0x7f090308

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    const/4 v0, 0x3

    const v2, 0x7f090309

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const v2, 0x7f09030d

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const v0, 0x7f09030c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    .line 355
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f040170

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 357
    const v0, 0x7f1001d3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 358
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$7;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity$7;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 384
    const v0, 0x7f1001d6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 385
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "dd/MM/yyyy"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 386
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/samsung/privilege/activity/ProfileActivity$8;

    invoke-direct {v2, p0, v6, v3}, Lcom/samsung/privilege/activity/ProfileActivity$8;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Ljava/text/SimpleDateFormat;)V

    .line 392
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 393
    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$9;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity$9;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/app/DatePickerDialog;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    const v0, 0x7f1001a0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 403
    new-array v1, v11, [Ljava/lang/String;

    const v2, 0x7f0902fa

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const v2, 0x7f0902fb

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f0902fc

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x3

    const v3, 0x7f0902fd

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0902fe

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 404
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f040170

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 405
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$10;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity$10;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    const v0, 0x7f1001b0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 422
    const v1, 0x7f1001ae

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 423
    const v2, 0x7f1001af

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 424
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$11;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity$11;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 439
    const v1, 0x7f1001b8

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 440
    const v2, 0x7f1001ba

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 441
    const v3, 0x7f1001b9

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 442
    new-instance v4, Lcom/samsung/privilege/activity/ProfileActivity$12;

    invoke-direct {v4, p0, v2, v1}, Lcom/samsung/privilege/activity/ProfileActivity$12;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 456
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "402705486466922"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_323

    .line 457
    const v1, 0x7f0901b5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    const v0, 0x7f100196

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 470
    :cond_2c8
    :goto_2c8
    const v0, 0x7f1001bd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 471
    const v1, 0x7f1001be

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 472
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 474
    const v2, 0x7f1001bb

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 475
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$13;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/privilege/activity/ProfileActivity$13;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    const v0, 0x7f10019a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 536
    const v1, 0x7f10019b

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 537
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    const v2, 0x7f100198

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 540
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$14;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/privilege/activity/ProfileActivity$14;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    return-void

    .line 274
    :cond_315
    const v0, 0x7f1001d0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    goto/16 :goto_a9

    .line 459
    :cond_323
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "768830479847872"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_349

    .line 460
    const v1, 0x7f0901b1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    const v0, 0x7f100196

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c8

    .line 462
    :cond_349
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1525635597652592"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_366

    .line 464
    const v0, 0x7f100196

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c8

    .line 465
    :cond_366
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "517155661760483"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c8

    .line 466
    const v1, 0x7f0901b3

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    const v0, 0x7f100196

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c8
.end method

.method private j()V
    .registers 7

    .prologue
    const v5, 0x7f1001b2

    const v4, 0x7f1001b1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 602
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_44

    .line 603
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 604
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 607
    const v0, 0x7f1001b4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 608
    const v0, 0x7f1001b6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 609
    const v0, 0x7f1001b5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 610
    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileActivity$15;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 630
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->k()V

    .line 635
    :goto_43
    return-void

    .line 632
    :cond_44
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 633
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43
.end method

.method private k()V
    .registers 6

    .prologue
    .line 638
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4a

    .line 639
    const v0, 0x7f1001b4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 640
    const v1, 0x7f1001b6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 641
    const v2, 0x7f1001b5

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 643
    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 644
    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 645
    if-nez v3, :cond_33

    if-eqz v4, :cond_4b

    .line 646
    :cond_33
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    .line 647
    const-string/jumbo v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 655
    :cond_4a
    :goto_4a
    return-void

    .line 650
    :cond_4b
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    .line 651
    const-string/jumbo v2, "#2ba9e3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 652
    const-string/jumbo v1, "#ebebeb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4a
.end method

.method private l()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/profile/me"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1098
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getProfileData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string/jumbo v1, ""

    const v2, 0x7f090281

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->d:Landroid/app/ProgressDialog;

    .line 1100
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1101
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1102
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1103
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1104
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1105
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$20;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileActivity$20;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    .line 1106
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1141
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1142
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1387
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->finish()V

    .line 1388
    return-void
.end method

.method public doPointStatement(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1391
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1392
    if-eqz v0, :cond_48

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->T:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Views/Point/Expire.aspx?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1395
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1396
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    const-string/jumbo v0, "enable_webview_back"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1398
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 1400
    :cond_48
    return-void
.end method

.method public doUpdate(Landroid/view/View;)V
    .registers 22

    .prologue
    .line 1412
    const-string/jumbo v2, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1413
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_20

    .line 1414
    const v2, 0x7f090251

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1815
    :cond_1f
    :goto_1f
    return-void

    .line 1418
    :cond_20
    const v2, 0x7f1001c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1419
    const v3, 0x7f1001c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1420
    const v4, 0x7f1001c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1421
    const v5, 0x7f1001c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1422
    const v6, 0x7f1001cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1423
    const v7, 0x7f1001d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1424
    const v8, 0x7f1001ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1425
    const v9, 0x7f1001d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 1426
    const v10, 0x7f10019d

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 1427
    const v11, 0x7f1001aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 1428
    const v12, 0x7f1001ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 1430
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_bb

    .line 1431
    const v2, 0x7f0902e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1433
    :cond_bb
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_dd

    .line 1434
    const v2, 0x7f0902e2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1439
    :cond_dd
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "2"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_177

    .line 1440
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_167

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_167

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_167

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_167

    .line 1459
    :cond_132
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1ba

    .line 1460
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1ba

    .line 1463
    const v2, 0x7f0902e3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1464
    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1f

    .line 1445
    :cond_167
    const v2, 0x7f0902de

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1449
    :cond_177
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_132

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_132

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_132

    .line 1454
    const v2, 0x7f0902dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1469
    :cond_1ba
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1f2

    .line 1470
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-eq v13, v14, :cond_1f2

    .line 1473
    const v2, 0x7f0902e4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v12}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1f

    .line 1481
    :cond_1f2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "api/profile/me"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1482
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "url= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    new-instance v14, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v14}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 1487
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_788

    .line 1502
    const-string/jumbo v15, "firstname"

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1503
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "firstname "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-string/jumbo v2, "lastname"

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "lastname "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    const-string/jumbo v2, "ShippingFirstName"

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "ShippingFirstName "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    const-string/jumbo v2, "ShippingLastName"

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ShippingLastName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    :goto_2ff
    const-string/jumbo v2, "email"

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "email "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0902ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7ec

    .line 1523
    const-string/jumbo v2, "gender"

    const-string/jumbo v3, "female"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "gender female"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :cond_362
    :goto_362
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3ca

    .line 1532
    :try_start_373
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd/MM/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1533
    const-string/jumbo v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1534
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 1535
    const-string/jumbo v3, "birthdate"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v16, 0x3e8

    div-long v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "birthdate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3ca
    .catch Ljava/text/ParseException; {:try_start_373 .. :try_end_3ca} :catch_820

    .line 1543
    :cond_3ca
    :goto_3ca
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1544
    if-eqz v2, :cond_826

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_826

    .line 1549
    :goto_3dd
    const-string/jumbo v3, "contact_number"

    invoke-virtual {v14, v3, v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "contact_number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09030b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82b

    .line 1553
    const-string/jumbo v2, "region"

    const-string/jumbo v3, "northern"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "region northern"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    :cond_430
    :goto_430
    if-eqz v11, :cond_92f

    const-string/jumbo v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92f

    .line 1573
    const-string/jumbo v2, "address"

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    if-eqz v12, :cond_4a8

    const-string/jumbo v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a8

    .line 1583
    const-string/jumbo v2, "zipcode"

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "zipcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    :cond_4a8
    const v2, 0x7f1001d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1588
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_519

    .line 1590
    :try_start_4c4
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "dd/MM/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1591
    const-string/jumbo v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1592
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 1593
    const-string/jumbo v3, "PhonePurchase"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PhonePurchase="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_519
    .catch Ljava/text/ParseException; {:try_start_4c4 .. :try_end_519} :catch_947

    .line 1600
    :cond_519
    :goto_519
    const v2, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1601
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0902fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94d

    .line 1602
    const-string/jumbo v2, "Income"

    const-string/jumbo v3, "15000"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "Income=15000"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    :cond_552
    :goto_552
    const-string/jumbo v4, ""

    .line 1619
    const-string/jumbo v3, ""

    .line 1620
    const v2, 0x7f1001a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_587

    .line 1621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Restaurant"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1622
    const-string/jumbo v2, ","

    move-object v4, v3

    move-object v3, v2

    .line 1624
    :cond_587
    const v2, 0x7f1001a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5b4

    .line 1625
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Dessert"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1626
    const-string/jumbo v3, ","

    .line 1628
    :cond_5b4
    const v2, 0x7f1001a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5e1

    .line 1629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Entertainment"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1630
    const-string/jumbo v3, ","

    .line 1632
    :cond_5e1
    const v2, 0x7f1001a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_60e

    .line 1633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Beauty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1634
    const-string/jumbo v3, ","

    .line 1636
    :cond_60e
    const v2, 0x7f1001a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_63b

    .line 1637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Fashion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1638
    const-string/jumbo v3, ","

    .line 1640
    :cond_63b
    const v2, 0x7f1001a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_668

    .line 1641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Sport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1642
    const-string/jumbo v3, ","

    .line 1644
    :cond_668
    const v2, 0x7f1001a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_695

    .line 1645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Travel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1646
    const-string/jumbo v2, ","

    .line 1648
    :cond_695
    if-eqz v4, :cond_6c1

    const-string/jumbo v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c1

    .line 1649
    const-string/jumbo v2, "Interests"

    invoke-virtual {v14, v2, v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Interests="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    :cond_6c1
    const v2, 0x7f1001b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1680
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a18

    .line 1681
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a()Z

    move-result v3

    if-eqz v3, :cond_a07

    .line 1696
    :cond_6dd
    :goto_6dd
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a()Z

    move-result v2

    if-eqz v2, :cond_a2f

    .line 1697
    const-string/jumbo v2, "device_noti_enable"

    const-string/jumbo v3, "true"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1698
    const-string/jumbo v2, "NotificationEnable"

    const-string/jumbo v3, "true"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "device_noti_enable=true"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    :goto_6ff
    const-string/jumbo v2, ""

    const v3, 0x7f090281

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->d:Landroid/app/ProgressDialog;

    .line 1720
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1721
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1722
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 1723
    invoke-virtual {v2, v13}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 1724
    invoke-virtual {v2, v14}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 1725
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-object v3, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1726
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/privilege/activity/ProfileActivity$21;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    .line 1727
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    .line 1803
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77f

    .line 1804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v2, v2, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    if-eqz v2, :cond_77f

    .line 1806
    :try_start_76a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    const-string/jumbo v3, "data"

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v5, v5, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;Ljava/io/File;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;
    :try_end_77f
    .catch Ljava/lang/Exception; {:try_start_76a .. :try_end_77f} :catch_a4d

    .line 1813
    :cond_77f
    :goto_77f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-virtual {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_1f

    .line 1512
    :cond_788
    const-string/jumbo v2, "ShippingFirstName"

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "firstname "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    const-string/jumbo v2, "ShippingLastName"

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lastname "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2ff

    .line 1525
    :cond_7ec
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0902ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_362

    .line 1526
    const-string/jumbo v2, "gender"

    const-string/jumbo v3, "male"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "gender male"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_362

    .line 1537
    :catch_820
    move-exception v2

    .line 1538
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3ca

    .line 1547
    :cond_826
    const-string/jumbo v2, "+0000000000"

    goto/16 :goto_3dd

    .line 1555
    :cond_82b
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09030a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85f

    .line 1556
    const-string/jumbo v2, "region"

    const-string/jumbo v3, "northeastern"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "region northeastern"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_430

    .line 1558
    :cond_85f
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090308

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_893

    .line 1559
    const-string/jumbo v2, "region"

    const-string/jumbo v3, "central"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "region central"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_430

    .line 1561
    :cond_893
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090309

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c7

    .line 1562
    const-string/jumbo v2, "region"

    const-string/jumbo v3, "eastern"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "region eastern"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_430

    .line 1564
    :cond_8c7
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09030d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8fb

    .line 1565
    const-string/jumbo v2, "region"

    const-string/jumbo v3, "western"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "region western"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_430

    .line 1567
    :cond_8fb
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09030c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_430

    .line 1568
    const-string/jumbo v2, "region"

    const-string/jumbo v3, "southern"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "region southern"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_430

    .line 1576
    :cond_92f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1577
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0902e0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1595
    :catch_947
    move-exception v2

    .line 1596
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_519

    .line 1604
    :cond_94d
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0902fb

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97d

    .line 1605
    const-string/jumbo v2, "Income"

    const-string/jumbo v3, "25000"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "Income=25000"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_552

    .line 1607
    :cond_97d
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0902fc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9ad

    .line 1608
    const-string/jumbo v2, "Income"

    const-string/jumbo v3, "35000"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "Income=35000"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_552

    .line 1610
    :cond_9ad
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0902fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9dd

    .line 1611
    const-string/jumbo v2, "Income"

    const-string/jumbo v3, "45000"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "Income=45000"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_552

    .line 1613
    :cond_9dd
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "45,001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_552

    .line 1614
    const-string/jumbo v2, "Income"

    const-string/jumbo v3, "45001-"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "Income=45001-"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_552

    .line 1684
    :cond_a07
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Z)Z

    .line 1685
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/GCMUtil;->b(Landroid/content/Context;)V

    goto/16 :goto_6dd

    .line 1688
    :cond_a18
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a()Z

    move-result v3

    if-eqz v3, :cond_6dd

    .line 1689
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Z)Z

    .line 1690
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/GCMUtil;->a(Landroid/content/Context;)V

    goto/16 :goto_6dd

    .line 1701
    :cond_a2f
    const-string/jumbo v2, "device_noti_enable"

    const-string/jumbo v3, "false"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1702
    const-string/jumbo v2, "NotificationEnable"

    const-string/jumbo v3, "false"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "device_noti_enable=false"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6ff

    .line 1807
    :catch_a4d
    move-exception v2

    .line 1808
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_77f
.end method

.method public f()Ljava/lang/String;
    .registers 7

    .prologue
    .line 749
    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 750
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/privilege/activity/ProfileActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 753
    const-string/jumbo v1, "_data"

    .line 754
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 755
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 757
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-result-object v0

    .line 759
    :goto_21
    return-object v0

    .line 758
    :catch_22
    move-exception v0

    .line 759
    const-string/jumbo v0, ""

    goto :goto_21
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x2

    .line 666
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 668
    if-ne p2, v2, :cond_63

    if-ne p1, v1, :cond_63

    .line 669
    :try_start_b
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 670
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 671
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v1, v1, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 672
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 673
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 674
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 677
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 678
    const-string/jumbo v2, "image-path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 679
    const-string/jumbo v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 681
    const-string/jumbo v1, "aspectX"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 682
    const-string/jumbo v1, "aspectY"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 684
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 745
    :cond_62
    :goto_62
    return-void

    .line 685
    :cond_63
    if-ne p2, v2, :cond_fa

    if-ne p1, v0, :cond_fa

    .line 686
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->f()Ljava/lang/String;

    move-result-object v0

    .line 687
    if-eqz v0, :cond_9f

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 709
    :goto_76
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 712
    const-string/jumbo v2, "image-path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const-string/jumbo v0, "scale"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 715
    const-string/jumbo v0, "aspectX"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 716
    const-string/jumbo v0, "aspectY"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_62

    .line 742
    :catch_9d
    move-exception v0

    goto :goto_62

    .line 690
    :cond_9f
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 691
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 692
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 693
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d9} :catch_9d

    .line 696
    :try_start_d9
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 697
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 698
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 699
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/FileNotFoundException; {:try_start_d9 .. :try_end_eb} :catch_f0
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_eb} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_eb} :catch_9d

    .line 706
    :goto_eb
    :try_start_eb
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_76

    .line 700
    :catch_f0
    move-exception v0

    .line 701
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_eb

    .line 702
    :catch_f5
    move-exception v0

    .line 703
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_eb

    .line 719
    :cond_fa
    if-ne p2, v2, :cond_62

    if-ne p1, v3, :cond_62

    .line 720
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    const-string/jumbo v1, "image-path"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    .line 722
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 723
    if-eqz v1, :cond_134

    .line 724
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 726
    const v0, 0x7f1001c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 727
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 728
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 730
    if-eqz v1, :cond_62

    .line 731
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 732
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    goto/16 :goto_62

    .line 737
    :cond_134
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_139} :catch_9d

    goto/16 :goto_62
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/4 v3, 0x1

    .line 851
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_b4

    .line 927
    :cond_b
    :goto_b
    return v3

    .line 854
    :pswitch_c
    :try_start_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_34

    .line 855
    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 856
    if-eqz v0, :cond_30

    .line 868
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_28

    goto :goto_b

    .line 875
    :catch_28
    move-exception v0

    .line 876
    const-string/jumbo v0, "Can not browse photo!"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 870
    :cond_30
    :try_start_30
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->h()V

    goto :goto_b

    .line 873
    :cond_34
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->h()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_28

    goto :goto_b

    .line 882
    :pswitch_38
    :try_start_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_6f

    .line 883
    const-string/jumbo v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 884
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 885
    if-nez v0, :cond_4e

    if-eqz v1, :cond_6b

    .line 897
    :cond_4e
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_62} :catch_63

    goto :goto_b

    .line 904
    :catch_63
    move-exception v0

    .line 905
    const-string/jumbo v0, "Can not open camera!"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 899
    :cond_6b
    :try_start_6b
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->g()V

    goto :goto_b

    .line 902
    :cond_6f
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->g()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_72} :catch_63

    goto :goto_b

    .line 910
    :pswitch_73
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    if-eqz v0, :cond_b

    .line 911
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_92

    .line 912
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 913
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 915
    :cond_8e
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iput-object v2, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 917
    :cond_92
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_9c

    .line 918
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iput-object v2, v0, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 920
    :cond_9c
    const v0, 0x7f1001c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 921
    if-eqz v0, :cond_b

    .line 922
    const v1, 0x7f020372

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/BBUtil;->a(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_b

    .line 851
    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_38
        :pswitch_73
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->setContentView(I)V

    .line 121
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->setTheme(I)V

    .line 123
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "protected void onCreate(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->c:Landroid/os/Handler;

    .line 126
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 129
    const v0, 0x7f1000b5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 133
    if-nez p1, :cond_70

    .line 139
    :goto_4b
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->i()V

    .line 140
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->j()V

    .line 142
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->l()V

    .line 144
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "force_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    .line 146
    const-string/jumbo v0, "Please completed your profile data:\n- Firstname\n- Lastname\n- Address"

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    :cond_69
    const-string/jumbo v0, "My Account"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 150
    return-void

    .line 136
    :cond_70
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Landroid/os/Bundle;)V

    goto :goto_4b
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 837
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 838
    const-string/jumbo v0, "Post photo on profile"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 839
    const-string/jumbo v0, "Choose From Gallery"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 840
    const-string/jumbo v0, "Take Photo"

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 842
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    .line 843
    const-string/jumbo v0, "Delete Photo"

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 847
    :goto_28
    return-void

    .line 845
    :cond_29
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_28
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8

    .prologue
    .line 820
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 821
    packed-switch p1, :pswitch_data_6a

    .line 832
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 824
    :pswitch_a
    const v0, 0x7f1001ce

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 825
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 826
    array-length v0, v5

    const/4 v2, 0x3

    if-lt v0, v2, :cond_52

    .line 827
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity;->p:Landroid/app/DatePickerDialog$OnDateSetListener;

    const/4 v1, 0x2

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x1

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_9

    .line 829
    :cond_52
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity;->p:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_9

    .line 821
    nop

    :pswitch_data_6a
    .packed-switch 0xa
        :pswitch_a
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 158
    sparse-switch p1, :sswitch_data_88

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 197
    :goto_7
    return-void

    .line 160
    :sswitch_8
    aget v0, p3, v4

    if-nez v0, :cond_10

    .line 162
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->g()V

    goto :goto_7

    .line 165
    :cond_10
    const-string/jumbo v0, "PERMISSION CAMERA And READ_EXTERNAL_STORAGE Denied"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 169
    :sswitch_1b
    aget v0, p3, v4

    if-nez v0, :cond_23

    .line 171
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->h()V

    goto :goto_7

    .line 174
    :cond_23
    const-string/jumbo v0, "PERMISSION READ_EXTERNAL_STORAGE Denied"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 178
    :sswitch_2e
    const v0, 0x7f1001b4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    const v1, 0x7f1001b6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 180
    const v2, 0x7f1001b5

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 181
    aget v3, p3, v4

    if-nez v3, :cond_65

    .line 183
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    .line 184
    const-string/jumbo v2, "#2ba9e3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    const-string/jumbo v1, "#ebebeb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 188
    :cond_65
    const-string/jumbo v3, "PERMISSION BEACON Denied"

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 189
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    .line 190
    const-string/jumbo v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 158
    nop

    :sswitch_data_88
    .sparse-switch
        0x64 -> :sswitch_8
        0xc8 -> :sswitch_1b
        0x12c -> :sswitch_2e
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 789
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 790
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 659
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 661
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->k()V

    .line 662
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 780
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 781
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string/jumbo v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 784
    const-string/jumbo v0, "gCategoryConfig"

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-void
.end method
