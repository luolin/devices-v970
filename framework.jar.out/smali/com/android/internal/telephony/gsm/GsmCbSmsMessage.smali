.class public Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;
.super Ljava/lang/Object;
.source "GsmCbSmsMessage.java"


# static fields
.field public static final CB_DISPLAY_IMM:I = 0x0

.field public static final CB_DISPLAY_NORMAL:I = 0x1

.field public static final CB_ETWS_EmergencyAlert_Bit_Index:I = 0xd

.field public static final CB_ETWS_ID_BEGIN:I = 0x1100

.field public static final CB_ETWS_ID_COMBINED:I = 0x1102

.field public static final CB_ETWS_ID_EARTHQUAKE:I = 0x1100

.field public static final CB_ETWS_ID_END:I = 0x1107

.field public static final CB_ETWS_ID_OTHERS:I = 0x1104

.field public static final CB_ETWS_ID_TEST:I = 0x1103

.field public static final CB_ETWS_ID_TSUNAMI:I = 0x1101

.field public static final CB_ETWS_Popup_Bit_Index:I = 0xd

.field public static final CB_ETWS_WARNING_COMBINED:I = 0x2

.field public static final CB_ETWS_WARNING_EARTHQUAKE:I = 0x0

.field public static final CB_ETWS_WARNING_OTHERS:I = 0x4

.field public static final CB_ETWS_WARNING_TEST:I = 0x3

.field public static final CB_ETWS_WARNING_TSUNAMI:I = 0x1

.field public static final CB_GS_Bit_Index:I = 0xe

.field public static final CB_MsgCode_Bit_Index:I = 0x4

.field public static final CB_UpdateNum_Bit_Index:I = 0x0

.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final GS_CELL_IMM:I = 0x0

.field public static final GS_CELL_NORMAL:I = 0x4

.field public static final GS_LAC_SAC:I = 0x2

.field public static final GS_PLMN:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field protected dcs:I

.field private etwsWarningSecurityInfo:[B

.field private etwsWarningType:I

.field protected mPdu:[B

.field private messageBody:Ljava/lang/String;

.field protected messageID:I

.field protected pageIndex:I

.field protected serialNumber:I

.field protected totalPage:I

.field protected userDataHeader:Lcom/android/internal/telephony/SmsHeader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;
    .locals 13
    .parameter "pdu"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x5

    const/4 v10, 0x6

    const/4 v9, 0x1

    .line 140
    new-instance v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;-><init>()V

    .line 142
    .local v4, msg:Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;
    iput-object p0, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->mPdu:[B

    .line 145
    aget-byte v6, p0, v11

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, p0, v9

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->serialNumber:I

    .line 148
    aget-byte v6, p0, v12

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->messageID:I

    .line 150
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->isETWSMessage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 153
    const/4 v6, 0x4

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    aget-byte v7, p0, v8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    iput v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->etwsWarningType:I

    .line 156
    const/16 v6, 0x32

    new-array v6, v6, [B

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->etwsWarningSecurityInfo:[B

    .line 157
    iget-object v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->etwsWarningSecurityInfo:[B

    const/16 v7, 0x32

    invoke-static {p0, v10, v6, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    const-string v6, "This is a ETWS Message"

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->messageBody:Ljava/lang/String;

    .line 248
    :goto_0
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CBSms newCB: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-object v4

    .line 165
    :cond_0
    const/4 v6, 0x4

    aget-byte v6, p0, v6

    iput v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->dcs:I

    .line 168
    aget-byte v6, p0, v8

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    iput v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->pageIndex:I

    .line 171
    aget-byte v6, p0, v8

    and-int/lit8 v6, v6, 0xf

    iput v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->totalPage:I

    .line 173
    iget v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->pageIndex:I

    if-eqz v6, :cond_1

    iget v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->totalPage:I

    if-nez v6, :cond_2

    .line 174
    :cond_1
    iput v9, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->pageIndex:I

    .line 175
    iput v9, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->totalPage:I

    .line 179
    :cond_2
    iget v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->dcs:I

    and-int/lit16 v6, v6, 0xec

    const/16 v7, 0x48

    if-eq v6, v7, :cond_3

    iget v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->dcs:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_4

    .line 182
    :cond_3
    const/4 v1, 0x3

    .line 207
    .local v1, encoding:I
    :goto_1
    array-length v6, p0

    add-int/lit8 v0, v6, -0x6

    .line 208
    .local v0, byteCount:I
    const/4 v5, 0x0

    .line 209
    .local v5, text:Ljava/lang/String;
    if-gez v0, :cond_a

    .line 210
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CBSms newCB: the length of the pdu is invalid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_2
    if-eqz v5, :cond_e

    .line 241
    const/16 v6, 0xd

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->removeTailCharacters(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->messageBody:Ljava/lang/String;

    goto :goto_0

    .line 184
    .end local v0           #byteCount:I
    .end local v1           #encoding:I
    .end local v5           #text:Ljava/lang/String;
    :cond_4
    iget v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->dcs:I

    and-int/lit16 v6, v6, 0xec

    const/16 v7, 0x44

    if-eq v6, v7, :cond_5

    iget v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->dcs:I

    and-int/lit16 v6, v6, 0xf4

    const/16 v7, 0xf4

    if-ne v6, v7, :cond_6

    .line 187
    :cond_5
    const/4 v1, 0x2

    .line 188
    .restart local v1       #encoding:I
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CBSms newCB: we don\'t support this dcs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->dcs:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    .end local v1           #encoding:I
    :cond_6
    iget v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->dcs:I

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_7

    .line 192
    const/4 v1, 0x0

    .line 193
    .restart local v1       #encoding:I
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CBSms newCB: we don\'t support WAP dcs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->dcs:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 195
    .end local v1           #encoding:I
    :cond_7
    iget v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->dcs:I

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0x90

    if-ne v6, v7, :cond_8

    .line 196
    const/4 v1, 0x0

    .line 197
    .restart local v1       #encoding:I
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CBSms newCB: we don\'t support UDH dcs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->dcs:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 199
    .end local v1           #encoding:I
    :cond_8
    iget v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->dcs:I

    and-int/lit16 v6, v6, 0xe0

    const/16 v7, 0x60

    if-ne v6, v7, :cond_9

    .line 200
    const/4 v1, 0x0

    .line 201
    .restart local v1       #encoding:I
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CBSms newCB: we don\'t support compressed dcs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->dcs:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 204
    .end local v1           #encoding:I
    :cond_9
    const/4 v1, 0x1

    .restart local v1       #encoding:I
    goto/16 :goto_1

    .line 212
    .restart local v0       #byteCount:I
    .restart local v5       #text:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x3

    if-ne v1, v6, :cond_b

    .line 214
    :try_start_0
    new-instance v5, Ljava/lang/String;

    .end local v5           #text:Ljava/lang/String;
    const/4 v6, 0x6

    const-string/jumbo v7, "utf-16"

    invoke-direct {v5, p0, v6, v0, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v5       #text:Ljava/lang/String;
    goto/16 :goto_2

    .line 215
    .end local v5           #text:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 216
    .local v2, ex:Ljava/io/UnsupportedEncodingException;
    const-string v6, "GSM"

    const-string v7, "CBSms NewCB, implausible UnsupportedEncodingException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    const/4 v5, 0x0

    .line 218
    .restart local v5       #text:Ljava/lang/String;
    goto/16 :goto_2

    .line 220
    .end local v2           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_b
    if-ne v1, v12, :cond_c

    .line 222
    :try_start_1
    new-instance v5, Ljava/lang/String;

    .end local v5           #text:Ljava/lang/String;
    const/4 v6, 0x6

    const-string/jumbo v7, "utf-8"

    invoke-direct {v5, p0, v6, v0, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v5       #text:Ljava/lang/String;
    goto/16 :goto_2

    .line 223
    .end local v5           #text:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 224
    .restart local v2       #ex:Ljava/io/UnsupportedEncodingException;
    const-string v6, "GSM"

    const-string v7, "CBSms NewCB, implausible UnsupportedEncodingException(utf-8)"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    const/4 v5, 0x0

    .line 226
    .restart local v5       #text:Ljava/lang/String;
    goto/16 :goto_2

    .line 228
    .end local v2           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_c
    if-ne v1, v9, :cond_d

    .line 230
    mul-int/lit8 v6, v0, 0x8

    div-int/lit8 v3, v6, 0x7

    .line 232
    .local v3, lengthSeptets:I
    invoke-static {p0, v10, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 233
    goto/16 :goto_2

    .line 235
    .end local v3           #lengthSeptets:I
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 244
    :cond_e
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->messageBody:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static isDuplicateMessage(IIIIIIII)Z
    .locals 5
    .parameter "oldSn"
    .parameter "oldMsgId"
    .parameter "oldLac"
    .parameter "oldCid"
    .parameter "newSn"
    .parameter "newMsgId"
    .parameter "newLac"
    .parameter "newCid"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, ret:Z
    shr-int/lit8 v4, p0, 0xe

    and-int/lit8 v0, v4, 0x3

    .line 110
    .local v0, gsCode:I
    if-ne p1, p5, :cond_0

    if-ne p0, p4, :cond_0

    .line 112
    if-ne p0, p4, :cond_0

    .line 114
    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 118
    :pswitch_1
    if-ne p3, p7, :cond_1

    move v1, v2

    .line 119
    :goto_1
    goto :goto_0

    :cond_1
    move v1, v3

    .line 118
    goto :goto_1

    .line 121
    :pswitch_2
    const/4 v1, 0x1

    .line 122
    goto :goto_0

    .line 124
    :pswitch_3
    if-ne p2, p6, :cond_2

    move v1, v2

    .line 125
    :goto_2
    goto :goto_0

    :cond_2
    move v1, v3

    .line 124
    goto :goto_2

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static newFromCBM(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;
    .locals 4
    .parameter "smsPdu"

    .prologue
    .line 254
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CBSms newFromCBM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 257
    .local v0, pduData:[B
    if-nez v0, :cond_0

    .line 258
    const/4 v1, 0x0

    .line 261
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;

    move-result-object v1

    goto :goto_0
.end method

.method private static removeTailCharacters(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4
    .parameter "src"
    .parameter "c"

    .prologue
    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, -0x1

    .line 340
    .local v0, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    .line 340
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 349
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->serialNumber:I

    shr-int/lit8 v0, v0, 0xe

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->messageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageID()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->messageID:I

    return v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->mPdu:[B

    return-object v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->serialNumber:I

    return v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public getWarningSecurityInfo()[B
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->etwsWarningSecurityInfo:[B

    return-object v0
.end method

.method public getWarningType()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->etwsWarningType:I

    return v0
.end method

.method public isETWSMessage()Z
    .locals 2

    .prologue
    .line 313
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->messageID:I

    const/16 v1, 0x1100

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->messageID:I

    const/16 v1, 0x1107

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isETWSNeedAlert()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 318
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->serialNumber:I

    shr-int/lit8 v1, v1, 0xd

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isETWSNeedPopup()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 323
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->serialNumber:I

    shr-int/lit8 v1, v1, 0xd

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CB Msg: Serial number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->serialNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message identifier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->messageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasUDH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->totalPage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pageIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message Body = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCbSmsMessage;->messageBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
