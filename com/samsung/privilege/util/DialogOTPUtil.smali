.class public Lcom/samsung/privilege/util/DialogOTPUtil;
.super Ljava/lang/Object;
.source "DialogOTPUtil.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Landroid/app/ProgressDialog;

.field private static c:Landroid/widget/EditText;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/samsung/privilege/util/DialogOTPUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogOTPUtil;->a:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/privilege/util/DialogOTPUtil;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/privilege/util/DialogOTPUtil;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/DialogOTPUtil;->b(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 26

    .prologue
    .line 52
    invoke-static/range {p0 .. p0}, Lcom/bzbs/data/AppSetting;->k(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_127

    .line 53
    new-instance v4, Landroid/app/Dialog;

    const v1, 0x1030010

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 55
    const v1, 0x7f04011c

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 57
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/privilege/util/DialogOTPUtil;->d:Z

    .line 59
    const v1, 0x7f100574

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 60
    const v2, 0x7f100579

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 62
    const v3, 0x7f1005df

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 63
    const v3, 0x7f1005dd

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    .line 64
    const v3, 0x7f100578

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 65
    const v3, 0x7f10057d

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    sput-object v3, Lcom/samsung/privilege/util/DialogOTPUtil;->c:Landroid/widget/EditText;

    .line 67
    const v3, 0x7f100581

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    const v3, 0x7f100583

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 70
    const v3, 0x7f10057a

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/TextView;

    .line 71
    const v3, 0x7f10057c

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 72
    const v3, 0x7f100577

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 73
    const v3, 0x7f100582

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 74
    const v3, 0x7f1005de

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 75
    const v3, 0x7f100580

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 76
    const v3, 0x7f10057b

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/RelativeLayout;

    .line 78
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    new-instance v1, Lcom/samsung/privilege/util/DialogOTPUtil$1;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/privilege/util/DialogOTPUtil$1;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v1, Lcom/samsung/privilege/util/DialogOTPUtil$2;

    invoke-direct {v1, v15}, Lcom/samsung/privilege/util/DialogOTPUtil$2;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v11, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 119
    new-instance v5, Lcom/samsung/privilege/util/DialogOTPUtil$3;

    move-object v6, v7

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p2

    move-object v12, v4

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    invoke-direct/range {v5 .. v14}, Lcom/samsung/privilege/util/DialogOTPUtil$3;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget-object v1, Lcom/samsung/privilege/util/DialogOTPUtil;->c:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/privilege/util/DialogOTPUtil$4;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/samsung/privilege/util/DialogOTPUtil$4;-><init>(Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 152
    new-instance v1, Lcom/samsung/privilege/util/DialogOTPUtil$5;

    invoke-direct {v1, v15}, Lcom/samsung/privilege/util/DialogOTPUtil$5;-><init>(Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v1, Lcom/samsung/privilege/util/DialogOTPUtil$6;

    invoke-direct {v1, v4}, Lcom/samsung/privilege/util/DialogOTPUtil$6;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v1, Lcom/samsung/privilege/util/DialogOTPUtil$7;

    invoke-direct {v1, v4}, Lcom/samsung/privilege/util/DialogOTPUtil$7;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 172
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 173
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 175
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 179
    :goto_126
    return-void

    .line 177
    :cond_127
    const/4 v5, 0x0

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-static/range {v1 .. v8}, Lcom/samsung/privilege/util/DialogOTPUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_126
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 474
    :try_start_0
    sget-object v0, Lcom/samsung/privilege/util/DialogOTPUtil;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_9

    .line 475
    sget-object v0, Lcom/samsung/privilege/util/DialogOTPUtil;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 480
    :cond_9
    :goto_9
    return-void

    .line 477
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/samsung/privilege/util/DialogOTPUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 42
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/privilege/util/DialogOTPUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 42
    invoke-static/range {p0 .. p7}, Lcom/samsung/privilege/util/DialogOTPUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Z)Z
    .registers 1

    .prologue
    .line 42
    sput-boolean p0, Lcom/samsung/privilege/util/DialogOTPUtil;->d:Z

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/privilege/util/DialogOTPUtil;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/os/Handler;Landroid/app/Dialog;)V
    .registers 16

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    const v0, 0x7f100574

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 183
    const v0, 0x7f100579

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 185
    const v0, 0x7f1005df

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    const v0, 0x7f1005dd

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 187
    const v1, 0x7f100578

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 188
    const v1, 0x7f10057d

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 189
    const v1, 0x7f100581

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 190
    const v1, 0x7f100583

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 192
    const v1, 0x7f10057a

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 193
    const v1, 0x7f10057c

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 194
    const v1, 0x7f100577

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 195
    const v1, 0x7f100582

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 196
    const v1, 0x7f1005de

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 197
    const v1, 0x7f100580

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 198
    const v1, 0x7f10057b

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 200
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-gt v1, v2, :cond_a0

    .line 201
    const-string/jumbo v0, "Please enter valid telephone number!"

    invoke-static {v0, p0, p1}, Lcom/samsung/privilege/util/DialogOTPUtil;->b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 303
    :cond_9f
    :goto_9f
    return-void

    .line 205
    :cond_a0
    sget-boolean v1, Lcom/samsung/privilege/util/DialogOTPUtil;->d:Z

    if-eq v1, v5, :cond_9f

    .line 208
    sput-boolean v5, Lcom/samsung/privilege/util/DialogOTPUtil;->d:Z

    .line 210
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 211
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "api/auth/otp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "?app_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/bzbs/data/AppSetting;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&contact_number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    sget-object v1, Lcom/samsung/privilege/util/DialogOTPUtil;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v1, ""

    const v2, 0x7f090282

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v5, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/samsung/privilege/util/DialogOTPUtil;->b:Landroid/app/ProgressDialog;

    .line 220
    invoke-virtual {v8, v4}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 221
    const v1, 0x7f020057

    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 222
    const v1, 0x7f020366

    invoke-virtual {v7, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 223
    const-string/jumbo v1, ""

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 226
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 227
    invoke-virtual {v1, p0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    sget-boolean v4, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 228
    invoke-virtual {v1, v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v1

    .line 229
    invoke-virtual {v1, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 230
    invoke-static {p0}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->a:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 231
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogOTPUtil$8;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v12}, Lcom/samsung/privilege/util/DialogOTPUtil$8;-><init>(JLandroid/content/Context;Landroid/os/Handler;Landroid/widget/EditText;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 232
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    goto/16 :goto_9f
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 483
    new-instance v0, Lcom/samsung/privilege/util/DialogOTPUtil$11;

    invoke-direct {v0, p1, p0}, Lcom/samsung/privilege/util/DialogOTPUtil$11;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wallet/create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    sget-object v1, Lcom/samsung/privilege/util/DialogOTPUtil;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "callCreate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 421
    new-instance v2, Lcom/bzbs/util/DeviceHelper;

    invoke-direct {v2, p1}, Lcom/bzbs/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 422
    invoke-virtual {v2}, Lcom/bzbs/util/DeviceHelper;->d()Ljava/lang/String;

    move-result-object v2

    .line 424
    const-string/jumbo v3, "imei"

    invoke-virtual {v1, v3, v2}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 425
    sget-object v3, Lcom/samsung/privilege/util/DialogOTPUtil;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "imei="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string/jumbo v2, "issuer"

    invoke-virtual {v1, v2, p3}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 428
    sget-object v2, Lcom/samsung/privilege/util/DialogOTPUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "issuer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    new-instance v2, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v2}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 431
    invoke-virtual {v2, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    sget-boolean v3, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 432
    invoke-virtual {v2, v3}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v2

    .line 433
    invoke-virtual {v2, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 434
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 435
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 436
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogOTPUtil$10;

    invoke-direct {v1, p1, p0}, Lcom/samsung/privilege/util/DialogOTPUtil$10;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 470
    return-void
.end method

.method private static b(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .prologue
    const/4 v2, 0x1

    .line 306
    const-string/jumbo v0, ""

    const v1, 0x7f090282

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/util/DialogOTPUtil;->b:Landroid/app/ProgressDialog;

    .line 309
    :try_start_11
    sget-object v0, Lcom/samsung/privilege/util/DialogOTPUtil;->b:Landroid/app/ProgressDialog;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 310
    if-eqz v0, :cond_34

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 313
    invoke-static {p1}, Lcom/bzbs/data/AppSetting;->c(Landroid/content/Context;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_34} :catch_10b

    .line 319
    :cond_34
    :goto_34
    invoke-static {p1}, Lcom/bzbs/util/PhoneManagerUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bzbs/data/UserLogin;->m(Landroid/content/Context;Ljava/lang/String;)Z

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/auth/bzbs_authen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    sget-object v1, Lcom/samsung/privilege/util/DialogOTPUtil;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v1, Lcom/bzbs/lib/http/okhttp/HttpParams;

    invoke-direct {v1}, Lcom/bzbs/lib/http/okhttp/HttpParams;-><init>()V

    .line 326
    const-string/jumbo v2, "contact_number"

    invoke-virtual {v1, v2, p5}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 327
    sget-object v2, Lcom/samsung/privilege/util/DialogOTPUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "contact_number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string/jumbo v2, "otp"

    invoke-virtual {v1, v2, p6}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 330
    sget-object v2, Lcom/samsung/privilege/util/DialogOTPUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "otp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string/jumbo v2, "refcode"

    invoke-virtual {v1, v2, p7}, Lcom/bzbs/lib/http/okhttp/HttpParams;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bzbs/lib/http/okhttp/HttpParams;

    .line 333
    sget-object v2, Lcom/samsung/privilege/util/DialogOTPUtil;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 336
    new-instance v4, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    invoke-direct {v4}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;-><init>()V

    .line 337
    invoke-virtual {v4, p1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Landroid/content/Context;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v4

    sget-boolean v5, Lcom/bzbs/data/AppSetting;->Q:Z

    .line 338
    invoke-virtual {v4, v5}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Z)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v4

    .line 339
    invoke-virtual {v4, v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpParams;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 341
    invoke-static {p1}, Lcom/bzbs/data/UserLogin;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->b(Ljava/lang/String;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    sget-object v1, Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;->b:Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;

    .line 342
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/HttpRequest$HttpMethod;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/util/DialogOTPUtil$9;

    move-object v4, p1

    move-object v5, p3

    move-object v6, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/privilege/util/DialogOTPUtil$9;-><init>(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 343
    invoke-virtual {v0, v1}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a(Lcom/bzbs/lib/http/okhttp/ResponseListener;)Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lcom/bzbs/lib/http/okhttp/HttpRequest$Builder;->a()Lcom/bzbs/lib/http/okhttp/HttpRequest;

    .line 413
    return-void

    .line 315
    :catch_10b
    move-exception v0

    goto/16 :goto_34
.end method

.method static synthetic c()Landroid/app/ProgressDialog;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/privilege/util/DialogOTPUtil;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method
