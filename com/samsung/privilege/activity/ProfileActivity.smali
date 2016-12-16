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

    .line 91
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 93
    const-class v0, Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "+0000000000"

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->e:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->f:I

    .line 105
    iput v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->g:I

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->h:I

    .line 111
    new-instance v0, Lcom/bzbs/bean/CameraData;

    invoke-direct {v0}, Lcom/bzbs/bean/CameraData;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    .line 153
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->k:I

    .line 154
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->l:I

    .line 155
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->m:I

    .line 823
    iput-boolean v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->n:Z

    .line 824
    new-instance v0, Lcom/samsung/privilege/activity/ProfileActivity$17;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/ProfileActivity$17;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->o:Landroid/view/View$OnTouchListener;

    .line 832
    new-instance v0, Lcom/samsung/privilege/activity/ProfileActivity$18;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/ProfileActivity$18;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->p:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 817
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "private void restoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string/jumbo v0, "onSaveInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 819
    const-string/jumbo v0, "gCategoryConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->j:Ljava/lang/String;

    .line 821
    :cond_1a
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->c:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/ProfileActivity$1;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    return-void
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/ProfileActivity;Z)Z
    .registers 2

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->n:Z

    return p1
.end method

.method private a(Ljava/lang/CharSequence;)Z
    .registers 3

    .prologue
    .line 1491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1492
    const/4 v0, 0x0

    .line 1494
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

.method static synthetic b(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->l()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/ProfileActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 1061
    const v0, 0x7f1001be

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1062
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1064
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v4, v1

    .line 1065
    :goto_13
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_e6

    move-result v1

    if-ge v4, v1, :cond_e7

    .line 1067
    :try_start_19
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1068
    const-string/jumbo v2, "id"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    .line 1069
    const-string/jumbo v2, "name_th"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1070
    const-string/jumbo v2, "name_en"

    invoke-static {v1, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1071
    const-string/jumbo v3, "active"

    invoke-static {v1, v3}, Lcom/bzbs/util/JsonUtil;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1073
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1074
    const v3, 0x7f040046

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1076
    const v1, 0x7f1001bf

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1077
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1079
    const v1, 0x7f1001c0

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1080
    const v2, 0x7f1001c2

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1081
    const v3, 0x7f1001c1

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1082
    new-instance v8, Lcom/samsung/privilege/activity/ProfileActivity$20;

    invoke-direct {v8, p0, v1, v2}, Lcom/samsung/privilege/activity/ProfileActivity$20;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v8}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 1094
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/samsung/privilege/control/toggle/ToggleButton;->setTag(Ljava/lang/Object;)V

    .line 1096
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/bzbs/data/UserLogin;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1097
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

    .line 1098
    invoke-virtual {v3}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    .line 1099
    const-string/jumbo v3, "#2ba9e3"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1100
    const-string/jumbo v1, "#ebebeb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1107
    :goto_c4
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1065
    :goto_c7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_13

    .line 1102
    :cond_cc
    invoke-virtual {v3}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    .line 1103
    const-string/jumbo v3, "#ebebeb"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1104
    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_e3} :catch_e4

    goto :goto_c4

    .line 1108
    :catch_e4
    move-exception v1

    goto :goto_c7

    .line 1112
    :catch_e6
    move-exception v0

    .line 1115
    :cond_e7
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 20

    .prologue
    .line 1171
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_591

    .line 1174
    :try_start_7
    const-string/jumbo v2, ""

    .line 1175
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_529

    .line 1176
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1177
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

    .line 1178
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

    .line 1184
    :goto_77
    const v2, 0x7f1001c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1185
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
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9b} :catch_86b

    .line 1192
    :goto_9b
    :try_start_9b
    const-string v2, "SM-G935F"

    .line 1193
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

    .line 1194
    const v2, 0x7f1001c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_ca} :catch_57d

    .line 1199
    :goto_ca
    :try_start_ca
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b3

    .line 1200
    const v2, 0x7f100139

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    const v2, 0x7f1001c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1202
    const v2, 0x7f1001c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1209
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

    .line 1210
    const v2, 0x7f1001c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "FirstName"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    const v2, 0x7f1001c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "LastName"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    const v2, 0x7f1001c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "ShippingFirstName"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    const v2, 0x7f1001c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "ShippingLastName"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    const v2, 0x7f1001d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "NationalIdCard"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1216
    const-string/jumbo v2, "ShippingFirstName"

    invoke-static {v5, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1217
    const-string/jumbo v3, "ShippingLastName"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1218
    const-string/jumbo v4, "Email"

    invoke-static {v5, v4}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1219
    const-string/jumbo v6, "Gender"

    invoke-static {v5, v6}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1220
    const-string/jumbo v7, "Address"

    invoke-static {v5, v7}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1221
    const-string/jumbo v8, "Zipcode"

    invoke-static {v5, v8}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 1222
    const-string/jumbo v8, "BirthDate"

    invoke-static {v5, v8}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    .line 1223
    const-string/jumbo v10, "Contact_Number"

    invoke-static {v5, v10}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1224
    const-string/jumbo v11, "PhonePurchase"

    invoke-static {v5, v11}, Lcom/bzbs/util/JsonUtil;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v12

    .line 1225
    const-string/jumbo v11, "Income"

    invoke-static {v5, v11}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1226
    const-string/jumbo v14, "Interests"

    invoke-static {v5, v14}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1228
    if-eqz v2, :cond_5de

    const-string/jumbo v15, ""

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5de

    if-eqz v3, :cond_5de

    const-string/jumbo v15, ""

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5de

    if-eqz v6, :cond_5de

    const-string/jumbo v15, ""

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5de

    if-eqz v10, :cond_5de

    const-string/jumbo v6, ""

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5de

    const-wide/16 v16, 0x0

    cmp-long v6, v8, v16

    if-lez v6, :cond_5de

    const-wide/16 v8, 0x0

    cmp-long v6, v12, v8

    if-lez v6, :cond_5de

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Z)Z

    .line 1234
    :goto_20d
    if-eqz v4, :cond_5e8

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e8

    if-eqz v11, :cond_5e8

    const-string/jumbo v4, ""

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e8

    if-eqz v14, :cond_5e8

    const-string/jumbo v4, ""

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e8

    .line 1235
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Z)Z

    .line 1240
    :goto_236
    if-eqz v2, :cond_5f2

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f2

    if-eqz v3, :cond_5f2

    const-string/jumbo v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f2

    if-eqz v7, :cond_5f2

    const-string/jumbo v2, ""

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5f2

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Z)Z

    .line 1246
    :goto_25f
    const-string/jumbo v2, "Gender"

    invoke-static {v5, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1247
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_635

    .line 1253
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "female"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5fc

    .line 1254
    const v2, 0x7f1001cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    :goto_293
    const-string/jumbo v2, "Region"

    invoke-static {v5, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1265
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_719

    .line 1266
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "northern"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_648

    .line 1267
    const v2, 0x7f1001d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090315

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    :goto_2c7
    const-string/jumbo v2, "BirthDate"

    invoke-static {v5, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1286
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72c

    .line 1287
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1288
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 1290
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "dd/MM/yyyy"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1292
    const v2, 0x7f1001ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    :goto_309
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_331

    .line 1298
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "dd/MM/yyyy"

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1299
    const v2, 0x7f1001d8

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

    .line 1302
    :cond_331
    const-string/jumbo v2, "15000"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73f

    .line 1303
    const v2, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090304

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1314
    :cond_351
    :goto_351
    const-string/jumbo v2, "Restaurant"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_369

    .line 1315
    const v2, 0x7f1001a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1317
    :cond_369
    const-string/jumbo v2, "Dessert"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_381

    .line 1318
    const v2, 0x7f1001a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1320
    :cond_381
    const-string/jumbo v2, "Entertainment"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_399

    .line 1321
    const v2, 0x7f1001a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1323
    :cond_399
    const-string/jumbo v2, "Beauty"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3b1

    .line 1324
    const v2, 0x7f1001a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1326
    :cond_3b1
    const-string/jumbo v2, "Fashion"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3c9

    .line 1327
    const v2, 0x7f1001a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1329
    :cond_3c9
    const-string/jumbo v2, "Sport"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3e1

    .line 1330
    const v2, 0x7f1001a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1332
    :cond_3e1
    const-string/jumbo v2, "Travel"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3f9

    .line 1333
    const v2, 0x7f1001a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1336
    :cond_3f9
    if-eqz v10, :cond_7d7

    const-string/jumbo v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d7

    .line 1337
    const-string/jumbo v2, "+0000000000"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c7

    .line 1338
    const v2, 0x7f1001d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1346
    :goto_41e
    const v2, 0x7f10019d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "Email"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1348
    const v2, 0x7f1001aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "Address"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    const v2, 0x7f1001ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, "Zipcode"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "ShippingFirstName"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->g(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1353
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "Address"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1356
    const v2, 0x7f1001af

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1357
    const-string/jumbo v3, "Locale"

    invoke-static {v5, v3}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1358
    const-string/jumbo v4, "1054"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7ef

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "402705486466922"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7ea

    .line 1360
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    .line 1380
    :goto_4a8
    const v3, 0x7f1001b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1381
    const v4, 0x7f1001ae

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1382
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a()Z

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_83c

    .line 1383
    const-string/jumbo v2, "#2ba9e3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1384
    const-string/jumbo v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1390
    :goto_4d9
    const v2, 0x7f1001b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1391
    const v3, 0x7f1001ba

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1392
    const v4, 0x7f1001b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_852

    .line 1395
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    .line 1396
    const-string/jumbo v2, "#2ba9e3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1397
    const-string/jumbo v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1404
    :goto_51c
    const-string/jumbo v2, "CategoryConfig"

    invoke-static {v5, v2}, Lcom/bzbs/util/JsonUtil;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1405
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->b(Ljava/lang/String;)V
    :try_end_528
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_528} :catch_591

    .line 1410
    :goto_528
    return-void

    .line 1179
    :cond_529
    :try_start_529
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86e

    .line 1180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1181
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 1182
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
    :try_end_579
    .catch Ljava/lang/Exception; {:try_start_529 .. :try_end_579} :catch_86b

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_77

    .line 1195
    :catch_57d
    move-exception v2

    .line 1196
    const v2, 0x7f1001c7

    :try_start_581
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_58f
    .catch Ljava/lang/Exception; {:try_start_581 .. :try_end_58f} :catch_591

    goto/16 :goto_ca

    .line 1407
    :catch_591
    move-exception v2

    .line 1408
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

    goto/16 :goto_528

    .line 1204
    :cond_5b3
    const v2, 0x7f100139

    :try_start_5b6
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    const v2, 0x7f1001c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    const v2, 0x7f1001c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_103

    .line 1231
    :cond_5de
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;Z)Z

    goto/16 :goto_20d

    .line 1237
    :cond_5e8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/bzbs/data/UserLogin;->d(Landroid/content/Context;Z)Z

    goto/16 :goto_236

    .line 1243
    :cond_5f2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/bzbs/data/UserLogin;->e(Landroid/content/Context;Z)Z

    goto/16 :goto_25f

    .line 1255
    :cond_5fc
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "male"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_622

    .line 1256
    const v2, 0x7f1001cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_293

    .line 1258
    :cond_622
    const v2, 0x7f1001cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_293

    .line 1261
    :cond_635
    const v2, 0x7f1001cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_293

    .line 1268
    :cond_648
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "northeastern"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66e

    .line 1269
    const v2, 0x7f1001d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090314

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c7

    .line 1270
    :cond_66e
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "central"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_694

    .line 1271
    const v2, 0x7f1001d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090312

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c7

    .line 1272
    :cond_694
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "eastern"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6ba

    .line 1273
    const v2, 0x7f1001d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090313

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c7

    .line 1274
    :cond_6ba
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "western"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e0

    .line 1275
    const v2, 0x7f1001d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090317

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c7

    .line 1276
    :cond_6e0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "southern"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_706

    .line 1277
    const v2, 0x7f1001d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090316

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c7

    .line 1279
    :cond_706
    const v2, 0x7f1001d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c7

    .line 1282
    :cond_719
    const v2, 0x7f1001d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c7

    .line 1294
    :cond_72c
    const v2, 0x7f1001ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_309

    .line 1304
    :cond_73f
    const-string/jumbo v2, "25000"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_761

    .line 1305
    const v2, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090305

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_351

    .line 1306
    :cond_761
    const-string/jumbo v2, "35000"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_783

    .line 1307
    const v2, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090306

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_351

    .line 1308
    :cond_783
    const-string/jumbo v2, "45000"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a5

    .line 1309
    const v2, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090307

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_351

    .line 1310
    :cond_7a5
    const-string/jumbo v2, "45001-"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_351

    .line 1311
    const v2, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090308

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_351

    .line 1340
    :cond_7c7
    const v2, 0x7f1001d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_41e

    .line 1343
    :cond_7d7
    const v2, 0x7f1001d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_41e

    .line 1362
    :cond_7ea
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    goto/16 :goto_4a8

    .line 1364
    :cond_7ef
    const-string/jumbo v4, "1108"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_813

    .line 1365
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "768830479847872"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80e

    .line 1366
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    goto/16 :goto_4a8

    .line 1368
    :cond_80e
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    goto/16 :goto_4a8

    .line 1370
    :cond_813
    const-string/jumbo v4, "1109"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_837

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "517155661760483"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_832

    .line 1372
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    goto/16 :goto_4a8

    .line 1374
    :cond_832
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    goto/16 :goto_4a8

    .line 1377
    :cond_837
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    goto/16 :goto_4a8

    .line 1386
    :cond_83c
    const-string/jumbo v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1387
    const-string/jumbo v2, "#2ba9e3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4d9

    .line 1399
    :cond_852
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    .line 1400
    const-string/jumbo v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1401
    const-string/jumbo v2, "#2ba9e3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_869
    .catch Ljava/lang/Exception; {:try_start_5b6 .. :try_end_869} :catch_591

    goto/16 :goto_51c

    .line 1186
    :catch_86b
    move-exception v2

    goto/16 :goto_9b

    :cond_86e
    move-object v3, v2

    goto/16 :goto_77
.end method

.method static synthetic c(Lcom/samsung/privilege/activity/ProfileActivity;)Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/samsung/privilege/activity/ProfileActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->m()V

    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bzbs/bean/CameraData;->gIsModeTakePhoto:Z

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    return-void
.end method

.method private h()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bzbs/bean/CameraData;->gIsModeTakePhoto:Z

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const-string/jumbo v1, "Select Picture"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    return-void
.end method

.method private i()V
    .registers 13

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x1

    .line 249
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 250
    const v0, 0x7f1001a2

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    const v0, 0x7f1001a3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    const v0, 0x7f1001a4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 253
    const v0, 0x7f1001a5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    const v0, 0x7f1001a6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 255
    const v0, 0x7f1001a7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 256
    const v0, 0x7f1001a8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 258
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 259
    const v0, 0x7f1001c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 260
    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileActivity$2;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    :cond_8c
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "402705486466922"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_315

    .line 273
    const v0, 0x7f1001d0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 279
    :goto_a9
    const v0, 0x7f1001ce

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 280
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 281
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "dd/MM/yyyy"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 282
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/samsung/privilege/activity/ProfileActivity$3;

    invoke-direct {v2, p0, v6, v3}, Lcom/samsung/privilege/activity/ProfileActivity$3;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Ljava/text/SimpleDateFormat;)V

    .line 288
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 289
    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$4;

    invoke-direct {v1, p0, v6, v0}, Lcom/samsung/privilege/activity/ProfileActivity$4;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/app/DatePickerDialog;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    const v0, 0x7f1001d1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 307
    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileActivity$5;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    const v0, 0x7f10019d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 325
    const v0, 0x7f10019d

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    const v0, 0x7f10019e

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    new-array v1, v10, [Ljava/lang/String;

    const v0, 0x7f0902f6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    const v0, 0x7f0902f7

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    .line 331
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f040178

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 333
    const v0, 0x7f1001cb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 334
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$6;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity$6;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    const v0, 0x7f1001cb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 358
    const v0, 0x7f1001cb

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    const v0, 0x7f1001cc

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const v0, 0x7f090315

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    const v0, 0x7f090314

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    const v0, 0x7f090312

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    const/4 v0, 0x3

    const v2, 0x7f090313

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const v2, 0x7f090317

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const v0, 0x7f090316

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    .line 364
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f040178

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 366
    const v0, 0x7f1001d5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 367
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$7;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity$7;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 393
    const v0, 0x7f1001d8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 394
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "dd/MM/yyyy"

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/util/LanguageSetting;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 395
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/samsung/privilege/activity/ProfileActivity$8;

    invoke-direct {v2, p0, v6, v3}, Lcom/samsung/privilege/activity/ProfileActivity$8;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Ljava/text/SimpleDateFormat;)V

    .line 401
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 402
    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$9;

    invoke-direct {v1, p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity$9;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/app/DatePickerDialog;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    const v0, 0x7f1001a0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 412
    new-array v1, v11, [Ljava/lang/String;

    const v2, 0x7f090304

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const v2, 0x7f090305

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const v2, 0x7f090306

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x3

    const v3, 0x7f090307

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f090308

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 413
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f040178

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 414
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$10;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity$10;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/ArrayAdapter;Landroid/widget/TextView;[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    const v0, 0x7f1001b0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 431
    const v1, 0x7f1001ae

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 432
    const v2, 0x7f1001af

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 433
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$11;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity$11;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 448
    const v1, 0x7f1001b8

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 449
    const v2, 0x7f1001ba

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 450
    const v3, 0x7f1001b9

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 451
    new-instance v4, Lcom/samsung/privilege/activity/ProfileActivity$12;

    invoke-direct {v4, p0, v2, v1}, Lcom/samsung/privilege/activity/ProfileActivity$12;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 465
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "402705486466922"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_323

    .line 466
    const v1, 0x7f0901b5

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    const v0, 0x7f100196

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 479
    :cond_2c8
    :goto_2c8
    const v0, 0x7f1001bd

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 480
    const v1, 0x7f1001be

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 481
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    const v2, 0x7f1001bb

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 484
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$13;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/privilege/activity/ProfileActivity$13;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    const v0, 0x7f10019a

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 545
    const v1, 0x7f10019b

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 546
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    const v2, 0x7f100198

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 549
    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$14;

    invoke-direct {v3, p0, v1, v0}, Lcom/samsung/privilege/activity/ProfileActivity$14;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    return-void

    .line 275
    :cond_315
    const v0, 0x7f1001d0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    goto/16 :goto_a9

    .line 468
    :cond_323
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "768830479847872"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_349

    .line 469
    const v1, 0x7f0901b1

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    const v0, 0x7f100196

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c8

    .line 471
    :cond_349
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1525635597652592"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_366

    .line 473
    const v0, 0x7f100196

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2c8

    .line 474
    :cond_366
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "517155661760483"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c8

    .line 475
    const v1, 0x7f0901b3

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
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

    .line 611
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_44

    .line 612
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 613
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 616
    const v0, 0x7f1001b4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 617
    const v0, 0x7f1001b6

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 618
    const v0, 0x7f1001b5

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 619
    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$15;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileActivity$15;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a(Lcom/samsung/privilege/control/toggle/ToggleButton$OnToggleChanged;)V

    .line 639
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->k()V

    .line 644
    :goto_43
    return-void

    .line 641
    :cond_44
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 642
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43
.end method

.method private k()V
    .registers 6

    .prologue
    .line 647
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4a

    .line 648
    const v0, 0x7f1001b4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 649
    const v1, 0x7f1001b6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 650
    const v2, 0x7f1001b5

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 652
    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 653
    const-string/jumbo v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 654
    if-nez v3, :cond_33

    if-eqz v4, :cond_4b

    .line 655
    :cond_33
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    .line 656
    const-string/jumbo v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 657
    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 664
    :cond_4a
    :goto_4a
    return-void

    .line 659
    :cond_4b
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    .line 660
    const-string/jumbo v2, "#2ba9e3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 661
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

    .line 1120
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

    .line 1121
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

    .line 1122
    const-string/jumbo v1, ""

    const v2, 0x7f090282

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->d:Landroid/app/ProgressDialog;

    .line 1123
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1124
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1125
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1126
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1127
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1128
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$21;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileActivity$21;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    .line 1129
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1167
    return-void
.end method

.method private m()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "card?mode=user_all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1414
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWalletCardList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string/jumbo v1, ""

    const v2, 0x7f090282

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->d:Landroid/app/ProgressDialog;

    .line 1416
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1417
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1418
    invoke-virtual {v1, v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 1419
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1420
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1421
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/ProfileActivity$22;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/ProfileActivity$22;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    .line 1422
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 1471
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 1472
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1475
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->finish()V

    .line 1476
    return-void
.end method

.method public doPointStatement(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1480
    if-eqz v0, :cond_48

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1481
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

    .line 1483
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/PointStatementActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1484
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1485
    const-string/jumbo v0, "enable_webview_back"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1486
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 1488
    :cond_48
    return-void
.end method

.method public doUpdate(Landroid/view/View;)V
    .registers 22

    .prologue
    .line 1500
    const-string/jumbo v2, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1501
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_20

    .line 1502
    const v2, 0x7f090251

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1903
    :cond_1f
    :goto_1f
    return-void

    .line 1506
    :cond_20
    const v2, 0x7f1001c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1507
    const v3, 0x7f1001c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1508
    const v4, 0x7f1001c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1509
    const v5, 0x7f1001c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 1510
    const v6, 0x7f1001cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1511
    const v7, 0x7f1001d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1512
    const v8, 0x7f1001ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1513
    const v9, 0x7f1001d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    .line 1514
    const v10, 0x7f10019d

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    .line 1515
    const v11, 0x7f1001aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 1516
    const v12, 0x7f1001ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    .line 1518
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_bb

    .line 1519
    const v2, 0x7f0902eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1521
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

    .line 1522
    const v2, 0x7f0902ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1527
    :cond_dd
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "2"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_177

    .line 1528
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

    .line 1547
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

    .line 1548
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1ba

    .line 1551
    const v2, 0x7f0902ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1552
    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1f

    .line 1533
    :cond_167
    const v2, 0x7f0902e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1537
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

    .line 1542
    const v2, 0x7f0902e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1557
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

    .line 1558
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

    .line 1561
    const v2, 0x7f0902ee

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1562
    invoke-virtual {v12}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_1f

    .line 1569
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

    .line 1570
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

    .line 1571
    new-instance v14, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v14}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 1575
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_788

    .line 1590
    const-string/jumbo v15, "firstname"

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1591
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

    .line 1592
    const-string/jumbo v2, "lastname"

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1593
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

    .line 1595
    const-string/jumbo v2, "ShippingFirstName"

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1596
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

    .line 1597
    const-string/jumbo v2, "ShippingLastName"

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1598
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

    .line 1607
    :goto_2ff
    const-string/jumbo v2, "email"

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1608
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

    .line 1610
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0902f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7ec

    .line 1611
    const-string/jumbo v2, "gender"

    const-string/jumbo v3, "female"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "gender female"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
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

    .line 1620
    :try_start_373
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "dd/MM/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1621
    const-string/jumbo v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1622
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 1623
    const-string/jumbo v3, "birthdate"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v16, 0x3e8

    div-long v4, v4, v16

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1624
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

    .line 1631
    :cond_3ca
    :goto_3ca
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1632
    if-eqz v2, :cond_826

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_826

    .line 1637
    :goto_3dd
    const-string/jumbo v3, "contact_number"

    invoke-virtual {v14, v3, v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1638
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

    .line 1640
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090315

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82b

    .line 1641
    const-string/jumbo v2, "region"

    const-string/jumbo v3, "northern"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "region northern"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    :cond_430
    :goto_430
    if-eqz v11, :cond_92f

    const-string/jumbo v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92f

    .line 1661
    const-string/jumbo v2, "address"

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1662
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

    .line 1670
    if-eqz v12, :cond_4a8

    const-string/jumbo v2, ""

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a8

    .line 1671
    const-string/jumbo v2, "zipcode"

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1672
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

    .line 1675
    :cond_4a8
    const v2, 0x7f1001d8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1676
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_519

    .line 1678
    :try_start_4c4
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "dd/MM/yyyy"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1679
    const-string/jumbo v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1680
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 1681
    const-string/jumbo v3, "PhonePurchase"

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1682
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

    .line 1688
    :cond_519
    :goto_519
    const v2, 0x7f1001a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1689
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090304

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94d

    .line 1690
    const-string/jumbo v2, "Income"

    const-string/jumbo v3, "15000"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "Income=15000"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    :cond_552
    :goto_552
    const-string/jumbo v4, ""

    .line 1707
    const-string/jumbo v3, ""

    .line 1708
    const v2, 0x7f1001a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_587

    .line 1709
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

    .line 1710
    const-string/jumbo v2, ","

    move-object v4, v3

    move-object v3, v2

    .line 1712
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

    .line 1713
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

    .line 1714
    const-string/jumbo v3, ","

    .line 1716
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

    .line 1717
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

    .line 1718
    const-string/jumbo v3, ","

    .line 1720
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

    .line 1721
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

    .line 1722
    const-string/jumbo v3, ","

    .line 1724
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

    .line 1725
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

    .line 1726
    const-string/jumbo v3, ","

    .line 1728
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

    .line 1729
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

    .line 1730
    const-string/jumbo v3, ","

    .line 1732
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

    .line 1733
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

    .line 1734
    const-string/jumbo v2, ","

    .line 1736
    :cond_695
    if-eqz v4, :cond_6c1

    const-string/jumbo v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c1

    .line 1737
    const-string/jumbo v2, "Interests"

    invoke-virtual {v14, v2, v4}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1738
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

    .line 1767
    :cond_6c1
    const v2, 0x7f1001b9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 1768
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->u(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a18

    .line 1769
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a()Z

    move-result v3

    if-eqz v3, :cond_a07

    .line 1784
    :cond_6dd
    :goto_6dd
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a()Z

    move-result v2

    if-eqz v2, :cond_a2f

    .line 1785
    const-string/jumbo v2, "device_noti_enable"

    const-string/jumbo v3, "true"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1786
    const-string/jumbo v2, "NotificationEnable"

    const-string/jumbo v3, "true"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "device_noti_enable=true"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    :goto_6ff
    const-string/jumbo v2, ""

    const v3, 0x7f090282

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

    .line 1808
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 1809
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/app/Activity;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 1810
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 1811
    invoke-virtual {v2, v13}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 1812
    invoke-virtual {v2, v14}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 1813
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-object v3, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 1814
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/ProfileActivity$23;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/privilege/activity/ProfileActivity$23;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    .line 1815
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    .line 1891
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77f

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v2, v2, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    if-eqz v2, :cond_77f

    .line 1894
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

    .line 1901
    :cond_77f
    :goto_77f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-virtual {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_1f

    .line 1600
    :cond_788
    const-string/jumbo v2, "ShippingFirstName"

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1601
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

    .line 1602
    const-string/jumbo v2, "ShippingLastName"

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1603
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

    .line 1613
    :cond_7ec
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0902f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_362

    .line 1614
    const-string/jumbo v2, "gender"

    const-string/jumbo v3, "male"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "gender male"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_362

    .line 1625
    :catch_820
    move-exception v2

    .line 1626
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_3ca

    .line 1635
    :cond_826
    const-string/jumbo v2, "+0000000000"

    goto/16 :goto_3dd

    .line 1643
    :cond_82b
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090314

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85f

    .line 1644
    const-string/jumbo v2, "region"

    const-string/jumbo v3, "northeastern"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "region northeastern"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_430

    .line 1646
    :cond_85f
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090312

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_893

    .line 1647
    const-string/jumbo v2, "region"

    const-string/jumbo v3, "central"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "region central"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_430

    .line 1649
    :cond_893
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090313

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c7

    .line 1650
    const-string/jumbo v2, "region"

    const-string/jumbo v3, "eastern"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "region eastern"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_430

    .line 1652
    :cond_8c7
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090317

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8fb

    .line 1653
    const-string/jumbo v2, "region"

    const-string/jumbo v3, "western"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "region western"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_430

    .line 1655
    :cond_8fb
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090316

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_430

    .line 1656
    const-string/jumbo v2, "region"

    const-string/jumbo v3, "southern"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "region southern"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_430

    .line 1664
    :cond_92f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 1665
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0902ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1683
    :catch_947
    move-exception v2

    .line 1684
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_519

    .line 1692
    :cond_94d
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090305

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97d

    .line 1693
    const-string/jumbo v2, "Income"

    const-string/jumbo v3, "25000"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "Income=25000"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_552

    .line 1695
    :cond_97d
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090306

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9ad

    .line 1696
    const-string/jumbo v2, "Income"

    const-string/jumbo v3, "35000"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1697
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "Income=35000"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_552

    .line 1698
    :cond_9ad
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090307

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/privilege/activity/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9dd

    .line 1699
    const-string/jumbo v2, "Income"

    const-string/jumbo v3, "45000"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "Income=45000"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_552

    .line 1701
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

    .line 1702
    const-string/jumbo v2, "Income"

    const-string/jumbo v3, "45001-"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "Income=45001-"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_552

    .line 1772
    :cond_a07
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Z)Z

    .line 1773
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/GCMUtil;->b(Landroid/content/Context;)V

    goto/16 :goto_6dd

    .line 1776
    :cond_a18
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->a()Z

    move-result v3

    if-eqz v3, :cond_6dd

    .line 1777
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;Z)Z

    .line 1778
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/util/GCMUtil;->a(Landroid/content/Context;)V

    goto/16 :goto_6dd

    .line 1789
    :cond_a2f
    const-string/jumbo v2, "device_noti_enable"

    const-string/jumbo v3, "false"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1790
    const-string/jumbo v2, "NotificationEnable"

    const-string/jumbo v3, "false"

    invoke-virtual {v14, v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 1791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v3, "device_noti_enable=false"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6ff

    .line 1895
    :catch_a4d
    move-exception v2

    .line 1896
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_77f
.end method

.method public f()Ljava/lang/String;
    .registers 7

    .prologue
    .line 772
    const/4 v0, 0x1

    :try_start_1
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 773
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/privilege/activity/ProfileActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 776
    const-string/jumbo v1, "_data"

    .line 777
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 778
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    .line 780
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_22

    move-result-object v0

    .line 782
    :goto_21
    return-object v0

    .line 781
    :catch_22
    move-exception v0

    .line 782
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

    .line 689
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 691
    if-ne p2, v2, :cond_63

    if-ne p1, v1, :cond_63

    .line 692
    :try_start_b
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 693
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 694
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v1, v1, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 695
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 696
    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 697
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 700
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 701
    const-string/jumbo v2, "image-path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    const-string/jumbo v1, "scale"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 704
    const-string/jumbo v1, "aspectX"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 705
    const-string/jumbo v1, "aspectY"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 768
    :cond_62
    :goto_62
    return-void

    .line 708
    :cond_63
    if-ne p2, v2, :cond_fa

    if-ne p1, v0, :cond_fa

    .line 709
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->f()Ljava/lang/String;

    move-result-object v0

    .line 710
    if-eqz v0, :cond_9f

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 732
    :goto_76
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/privilege/control/imagecropper/CropImage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 735
    const-string/jumbo v2, "image-path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    const-string/jumbo v0, "scale"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 738
    const-string/jumbo v0, "aspectX"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 739
    const-string/jumbo v0, "aspectY"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 741
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_62

    .line 765
    :catch_9d
    move-exception v0

    goto :goto_62

    .line 713
    :cond_9f
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 714
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 715
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 716
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

    .line 719
    :try_start_d9
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 720
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 721
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 722
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/FileNotFoundException; {:try_start_d9 .. :try_end_eb} :catch_f0
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_eb} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_eb} :catch_9d

    .line 729
    :goto_eb
    :try_start_eb
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_76

    .line 723
    :catch_f0
    move-exception v0

    .line 724
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_eb

    .line 725
    :catch_f5
    move-exception v0

    .line 726
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_eb

    .line 742
    :cond_fa
    if-ne p2, v2, :cond_62

    if-ne p1, v3, :cond_62

    .line 743
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    const-string/jumbo v1, "image-path"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    .line 745
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/bzbs/util/ImageUtils;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 746
    if-eqz v1, :cond_134

    .line 747
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iput-object v1, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 749
    const v0, 0x7f1001c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 750
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 751
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 753
    if-eqz v1, :cond_62

    .line 754
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 755
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    goto/16 :goto_62

    .line 760
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

    .line 874
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_b4

    .line 950
    :cond_b
    :goto_b
    return v3

    .line 877
    :pswitch_c
    :try_start_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_34

    .line 878
    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 879
    if-eqz v0, :cond_30

    .line 891
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

    .line 898
    :catch_28
    move-exception v0

    .line 899
    const-string/jumbo v0, "Can not browse photo!"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 893
    :cond_30
    :try_start_30
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->h()V

    goto :goto_b

    .line 896
    :cond_34
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->h()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_28

    goto :goto_b

    .line 905
    :pswitch_38
    :try_start_38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_6f

    .line 906
    const-string/jumbo v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 907
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 908
    if-nez v0, :cond_4e

    if-eqz v1, :cond_6b

    .line 920
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

    .line 927
    :catch_63
    move-exception v0

    .line 928
    const-string/jumbo v0, "Can not open camera!"

    invoke-direct {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 922
    :cond_6b
    :try_start_6b
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->g()V

    goto :goto_b

    .line 925
    :cond_6f
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->g()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_72} :catch_63

    goto :goto_b

    .line 933
    :pswitch_73
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    if-eqz v0, :cond_b

    .line 934
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_92

    .line 935
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 936
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 938
    :cond_8e
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iput-object v2, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    .line 940
    :cond_92
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    if-eqz v0, :cond_9c

    .line 941
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iput-object v2, v0, Lcom/bzbs/bean/CameraData;->gPhotoUri:Landroid/net/Uri;

    .line 943
    :cond_9c
    const v0, 0x7f1001c4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 944
    if-eqz v0, :cond_b

    .line 945
    const v1, 0x7f02037b

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/BBUtil;->a(Landroid/widget/ImageView;ILandroid/content/Context;)V

    goto/16 :goto_b

    .line 874
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
    .line 119
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->setContentView(I)V

    .line 122
    const v0, 0x10300f0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->setTheme(I)V

    .line 124
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "protected void onCreate(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->c:Landroid/os/Handler;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/LanguageSetting;->a(Landroid/content/Context;)V

    .line 130
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

    .line 132
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 134
    if-nez p1, :cond_70

    .line 140
    :goto_4b
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->i()V

    .line 141
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->j()V

    .line 143
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->l()V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "force_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    .line 147
    const-string/jumbo v0, "Please completed your profile data:\n- Firstname\n- Lastname\n- Address"

    invoke-static {p0, v0}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    :cond_69
    const-string/jumbo v0, "My Account"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 151
    return-void

    .line 137
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

    .line 860
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 861
    const-string/jumbo v0, "Post photo on profile"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 862
    const-string/jumbo v0, "Choose From Gallery"

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 863
    const-string/jumbo v0, "Take Photo"

    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 865
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->i:Lcom/bzbs/bean/CameraData;

    iget-object v0, v0, Lcom/bzbs/bean/CameraData;->gBitmapImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_29

    .line 866
    const-string/jumbo v0, "Delete Photo"

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 870
    :goto_28
    return-void

    .line 868
    :cond_29
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->removeItem(I)V

    goto :goto_28
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8

    .prologue
    .line 843
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 844
    packed-switch p1, :pswitch_data_6a

    .line 855
    const/4 v0, 0x0

    :goto_9
    return-object v0

    .line 847
    :pswitch_a
    const v0, 0x7f1001ce

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 848
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 849
    array-length v0, v5

    const/4 v2, 0x3

    if-lt v0, v2, :cond_52

    .line 850
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

    .line 852
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

    .line 844
    nop

    :pswitch_data_6a
    .packed-switch 0xa
        :pswitch_a
    .end packed-switch
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 682
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 684
    invoke-static {}, Lcom/bzbs/event/ProfileEvents;->a()V

    .line 685
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 159
    sparse-switch p1, :sswitch_data_88

    .line 196
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 198
    :goto_7
    return-void

    .line 161
    :sswitch_8
    aget v0, p3, v4

    if-nez v0, :cond_10

    .line 163
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->g()V

    goto :goto_7

    .line 166
    :cond_10
    const-string/jumbo v0, "PERMISSION CAMERA And READ_EXTERNAL_STORAGE Denied"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 170
    :sswitch_1b
    aget v0, p3, v4

    if-nez v0, :cond_23

    .line 172
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->h()V

    goto :goto_7

    .line 175
    :cond_23
    const-string/jumbo v0, "PERMISSION READ_EXTERNAL_STORAGE Denied"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_7

    .line 179
    :sswitch_2e
    const v0, 0x7f1001b4

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    const v1, 0x7f1001b6

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 181
    const v2, 0x7f1001b5

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/privilege/control/toggle/ToggleButton;

    .line 182
    aget v3, p3, v4

    if-nez v3, :cond_65

    .line 184
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->b()V

    .line 185
    const-string/jumbo v2, "#2ba9e3"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    const-string/jumbo v1, "#ebebeb"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 189
    :cond_65
    const-string/jumbo v3, "PERMISSION BEACON Denied"

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 190
    invoke-virtual {v2}, Lcom/samsung/privilege/control/toggle/ToggleButton;->c()V

    .line 191
    const-string/jumbo v2, "#ebebeb"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    const-string/jumbo v1, "#2ba9e3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 159
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
    .line 812
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 813
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "public void onRestoreInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 668
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 670
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ProfileActivity;->k()V

    .line 672
    new-instance v0, Lcom/samsung/privilege/activity/ProfileActivity$16;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/activity/ProfileActivity$16;-><init>(Lcom/samsung/privilege/activity/ProfileActivity;)V

    invoke-static {v0}, Lcom/bzbs/event/ProfileEvents;->a(Lcom/bzbs/event/ProfileEvents$ProfileListener;)V

    .line 678
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 803
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 804
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity;->b:Ljava/lang/String;

    const-string/jumbo v1, "public void onSaveInstanceState(Bundle savedInstanceState) {"

    invoke-static {v0, v1}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string/jumbo v0, "onSaveInstanceState"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 807
    const-string/jumbo v0, "gCategoryConfig"

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    return-void
.end method
